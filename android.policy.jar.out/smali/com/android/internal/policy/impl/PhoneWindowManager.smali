.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final DEBUG:Z = false

.field static final DEBUG_BENDED:Z = true

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_MIRRORLINK_DOCK_HOME_CAPTURE:Z = true

.field private static final EXTRA_DOCK_STATE_HMT:I = 0xb

.field private static final HIDE_SVIEW_COVER_ALWAYS:I = 0x1

.field private static final HIDE_SVIEW_COVER_NONE:I = 0x0

.field private static final HIDE_SVIEW_COVER_ONCE:I = 0x2

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_HOME_SMART_ASSISTANT:I = 0x3

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_EASY_ONE_HAND:I = 0x15

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISABLE_SIDE_KEY_PANEL:I = 0xa

.field private static final MSG_DISABLE_TOOL_BOX:I = 0x8

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_EASY_ONE_HAND:I = 0x14

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_ENABLE_SIDE_KEY_PANEL:I = 0x9

.field private static final MSG_ENABLE_SPEN_GESTURE:I = 0x5

.field private static final MSG_ENABLE_TOOL_BOX:I = 0x7

.field private static final MSG_SSRM_NOTIFICATION:I = 0x6

.field private static final PRECAP_DEFAULT_IMAGE_FOR_STARTING_IMAGE:Ljava/lang/String; = "com.samsung.precap.DEFAULT_IMAGE_FOR_STARTING_WINDOW"

.field static final PRINT_ANIM:Z = false

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field static final SAFE_DEBUG:Z

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_COVER:Ljava/lang/String; = "cover"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3ffffffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field public static isContainerOnlyMode:Z

.field public static isKnoxActivated:Z

.field static final localLOGV:Z

.field private static mCurrentUser:I

.field private static mPrecapFeature:Z

.field static final mTmpCocktailDiffFrame:Landroid/graphics/Rect;

.field static final mTmpCocktailFrame:Landroid/graphics/Rect;

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpSubWindowFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static wasTopFullscreen:Z


# instance fields
.field public final ALARM_STARTED:[Ljava/lang/String;

.field public final ALARM_STOPPED:[Ljava/lang/String;

.field private m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private final m2ndScreenWakeup:Ljava/lang/Runnable;

.field mAccelerometerDefault:Z

.field mAlarmReceivedFlag:Z

.field mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field private mAppSwitchLongpressed:Z

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field mBeforeKeyDown:I

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mButtonLightEnabled:Z

.field private mCanBeForceHide:Z

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

.field private mCocktailBarDirection:I

.field private mCocktailCurrentSize:I

.field private mCocktailShiftSize:I

.field private mCocktailSize:I

.field private mConsumeBackKeyUp:Z

.field mConsumeMenuKeyUp:Z

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCoverCloseRotation:I

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field mCoverState:Lcom/samsung/android/cover/CoverState;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCurrentUserId:I

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasyOneHandEnabled:I

.field mEnableLockScreenRotations:I

.field private mEnableMultiWindowUISetting:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstMultiWindowSettingOn:Z

.field private mFirstMultiWindowSplit:Z

.field private mFirstRecentKeyClick:Z

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field private mForceHideCascade:Z

.field private mForceHideCenterbar:Z

.field private mForceHideStatusBar:Z

.field private mForceHideStatusBarForCocktail:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field mForceTransientBars:Z

.field mForceUserActivityTimeoutWin:Landroid/view/WindowManagerPolicy$WindowState;

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field private mHasCocktailBar:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideLockScreenByCover:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHideSViewCover:I

.field mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field private mInitCocktailBar:Z

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mIsIsolatedSplitUsed:Z

.field private mIsKidsLauncherEnabled:Z

.field private mIsMWTrayOpen:Z

.field private mIsMultiWindowEnabled:Z

.field mIsOffhookInEndCall:Z

.field private mIsRecentMultiWindowUI:Z

.field mIsRingingInEndCall:Z

.field mIsSupportFlipCover:Z

.field mIsSupportSViewCover:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mKidsModeReceiver:Landroid/content/BroadcastReceiver;

.field private mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLaunchedMultipleTabActionTime:J

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field mLight:Landroid/os/IHardwareService;

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field private mMinimizeSize:I

.field mMirrorLinkDockEnablesAccelerometer:Z

.field mMirrorLinkDockIntent:Landroid/content/Intent;

.field mMirrorlinkDockRotation:I

.field mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

.field mMouseConnectedDock:I

.field mMouseDockedFlag:Z

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mOldMouseDockedValue:Z

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPanelOrientation:I

.field mPendingPowerKeyUpCanceled:Z

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPm:Landroid/os/PersonaManager;

.field mPointerLocationMode:I

.field mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPolicyKeyHandler:Landroid/os/Handler;

.field mPolicyKeyThread:Landroid/os/HandlerThread;

.field mPortraitRotation:I

.field mPowerConsumed:Z

.field mPowerDoubleTapPending:Z

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreloadedRecentApps:Z

.field mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field mQuickShotReceiver:Landroid/content/BroadcastReceiver;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mScaleWindowResizableSize:I

.field mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field private mScreenshotChordEnabled:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotForLog:Ljava/lang/Runnable;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field private mSealedModeReEnableVolumeUpKey:Z

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field mSecondLcdLastRotation:I

.field mSecondLcdUserRotationMode:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field private mSideKeyPanelEnabled:I

.field final mSpecialKeysLock:Ljava/lang/Object;

.field mSpecialKeysMessenger:Landroid/os/Messenger;

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mStatusBarTransient:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTabletUXConcept:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mToolBoxMode:I

.field mToolBoxPackageList:Ljava/lang/String;

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTouchExplorationEnabled:Z

.field mTranslucentDecorEnabled:Z

.field mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

.field mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

.field mUiMode:I

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWakeupCocktailBar:Z

.field mWatchDisplayed:Z

.field mWifiDisplayConnected:Z

.field mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrecapFeature:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xcf

    const-string v3, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd0

    const-string v3, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd1

    const-string v3, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd2

    const-string v3, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKnoxActivated:Z

    sput v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    return-void

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 15

    const/high16 v2, 0x4000000

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v14, 0x0

    const/4 v13, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarDirection:I

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInitCocktailBar:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTabletUXConcept:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScaleWindowResizableSize:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstRecentKeyClick:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSplit:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCenterbar:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCascade:Z

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSideKeyPanelEnabled:I

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v1, v0, v13

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v1, v0, v13

    const-string v1, "com.android.deskclock.ALARM_DONE"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceivedFlag:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableLockScreenRotations:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceUserActivityTimeoutWin:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongpressed:Z

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBeforeKeyDown:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToolBoxMode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToolBoxPackageList:Ljava/lang/String;

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLaunchedMultipleTabActionTime:J

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsOffhookInEndCall:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRingingInEndCall:Z

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    new-instance v6, Lcom/android/internal/policy/impl/BarController;

    const-string v7, "NavigationBar"

    const/high16 v8, 0x8000000

    const/high16 v9, 0x20000000

    const/high16 v10, -0x80000000

    const/4 v11, 0x2

    const/high16 v12, 0x8000000

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "CocktailBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickShotReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKidsModeReceiver:Landroid/content/BroadcastReceiver;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSplit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientCocktailBar(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setStatusBarExpandable(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$2902(I)I
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyToSSRM(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->refreshKnoxInfo()V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Ljava/util/Map;

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForCocktailWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableToolBox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disableToolBox()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRecentMultiWindowUI:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    return p1
.end method

.method private applyLidSwitchState()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setKeyboardVisibility(Z)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    return-void
.end method

.method private applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/graphics/Rect;
    .param p3    # Landroid/graphics/Rect;
    .param p4    # Landroid/graphics/Rect;
    .param p5    # Landroid/graphics/Rect;
    .param p6    # Landroid/graphics/Rect;
    .param p7    # Landroid/graphics/Rect;

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_3

    if-ne v1, v6, :cond_3

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_2

    const/16 v4, -0x2710

    iput v4, p6, Landroid/graphics/Rect;->top:I

    iput v4, p6, Landroid/graphics/Rect;->left:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    iput v4, p5, Landroid/graphics/Rect;->left:I

    iput v4, p4, Landroid/graphics/Rect;->top:I

    iput v4, p4, Landroid/graphics/Rect;->left:I

    iput v4, p3, Landroid/graphics/Rect;->top:I

    iput v4, p3, Landroid/graphics/Rect;->left:I

    const/16 v4, 0x2710

    iput v4, p6, Landroid/graphics/Rect;->bottom:I

    iput v4, p6, Landroid/graphics/Rect;->right:I

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    iput v4, p5, Landroid/graphics/Rect;->right:I

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    iput v4, p4, Landroid/graphics/Rect;->right:I

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p3, Landroid/graphics/Rect;->right:I

    :cond_2
    return-void

    :cond_3
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/graphics/Rect;

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static awakenDreams()V
    .locals 2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private canBeGetSViewCoverSize()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canHideNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    :cond_1
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelPendingScreenshotForLog()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    :cond_1
    return-void
.end method

.method private disableToolBox()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->unregisterCallback()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    :cond_1
    return-void
.end method

.method private enablePointerLocation()V
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    :cond_1
    return-void
.end method

.method private enableToolBox()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->registerCallback()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    :cond_0
    return-void
.end method

.method private finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .param p0    # Landroid/content/res/Resources;
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40200000

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .locals 3

    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "Home doubletap block in kidsmode and container only mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "WindowManager"

    const-string v1, "Home doubletap block in is not UserSetupComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WindowManager"

    const-string v1, "Home doubletap block in access control"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVzwSetupRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WindowManager"

    const-string v1, "Home doubletap block when Verizon Setup Wizard Running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    goto :goto_0
.end method

.method private handleDoubleTapOnPower()V
    .locals 3

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoubleTapOnPower() / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    return-void
.end method

.method private handleLongPressOnHome()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    if-eqz v4, :cond_3

    if-eq v0, v8, :cond_2

    if-ne v0, v6, :cond_3

    :cond_2
    const-string v4, "WindowManager"

    const-string v5, "Home long press block in kiosk mode during call"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WindowManager"

    const-string v5, "Home longpress block in kidsmode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "WindowManager"

    const-string v5, "Home longpress block in emergency & upsm mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WindowManager"

    const-string v5, "Home longpress blocked by Interaction control"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVzwSetupRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "WindowManager"

    const-string v5, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v4, :cond_0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v7, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v4, v6, :cond_9

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v4, "WindowManager"

    const-string v5, "RemoteException from getTelephonyService()"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_9
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v4, v8, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchSmartAssistant()V

    goto/16 :goto_0
.end method

.method private handleLongPressOnMenu()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCameraOnTop()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_1
    return-void
.end method

.method private handleTripleTapOnHome()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Home tripleTap : DeviceProvisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "Home tripleTap : notDeviceProvisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_0
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$50;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$50;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 6
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/KeyEvent;
    .param p3    # I

    const/4 v3, 0x1

    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 4
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getLiveDemoEnabledAndHMTConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "mPowerLongPress is postdelayed 5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .param p1    # Z

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private interceptScreenshotChord()V
    .locals 6

    const-wide/16 v4, 0x96

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private interceptScreenshotLog()V
    .locals 6

    const-wide/16 v4, 0x96

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotForLog()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const-string v7, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_1
    return v5

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private isEnabledTalkback()Z
    .locals 8

    const/16 v1, 0x3a

    const-string v0, "com.google.android.marvin.talkback"

    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isFilteredByMvp(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v4, "WindowManager"

    const-string v5, "Cannot acknowledge the request"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .locals 7
    .param p1    # I
    .param p2    # Z

    sget v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040293

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "edm.intent.action.ACTION_EDM_RESTRICTION_TOAST"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "message"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return v0
.end method

.method private isHidden(I)Z
    .locals 3
    .param p1    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 2
    .param p1    # I

    const/16 v0, 0x1800

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportAndAttachedSViewCover()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVzwSetupRunning()Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "VZW"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "WindowManager"

    const-string v3, "Device is in Factory Mode : Verizon Setup running false"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v2, "persist.sys.setupwizard"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "FINISH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "WindowManager"

    const-string v2, " Verizon Setup Wizard Running "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "WindowManager"

    const-string v3, " Verizon Setup Wizard Finished "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 6
    .param p1    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "home_wake"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xef -> :sswitch_2
        0xf0 -> :sswitch_2
        0xf1 -> :sswitch_0
        0xf2 -> :sswitch_0
    .end sparse-switch
.end method

.method private keyguardIsShowingTq()Z
    .locals 5

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v2, :cond_1

    sget v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Keyguard Showing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v2

    goto :goto_0
.end method

.method private launchAssistAction()V
    .locals 8

    const/4 v6, -0x2

    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchAssistAction() is called. intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x10a009c

    const v5, 0x10a009d

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchPremiumWatch()V
    .locals 4

    :try_start_0
    const-string v2, "WindowManager"

    const-string v3, "Premium watch on"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.intent.action.START_WATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "Fail to launch premium watch"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchSmartAssistant()V
    .locals 4

    const-string v1, "assist"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.app.sreminder"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchSmartAssistant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method private notifyCocktailBarVisibility(ILjava/lang/String;)V
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    :cond_0
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCocktailBarVisibility mwType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCocktailBarVisibility current state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->getCurrentTransientBarState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$48;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$48;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isTransientHiding()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(Z)V

    goto :goto_0
.end method

.method private notifyCocktailBarVisibility(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCocktailBarVisibility visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$49;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$49;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyLidSwitchChangedForFolder(JZ)V
    .locals 11
    .param p1    # J
    .param p3    # Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->changeLidState(Z)V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7, v6, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x3

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/os/PowerManager;->userActivity(JIZ)V

    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    if-eqz v5, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    :cond_2
    return-void

    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "premium_watch_switch_onoff"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    sget-boolean v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Let\'s choose one between premium watch or lock screen"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-ne v4, v5, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchPremiumWatch()V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sub_lcd_auto_lock"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_6

    move v3, v5

    :goto_2
    const-string v7, "service.camera.running"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sub LCD auto lock: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCameraRunning:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    move v3, v6

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1
.end method

.method private notifySystemUiVisibility(I)V
    .locals 2
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$46;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$46;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyToSSRM(Z)V
    .locals 3
    .param p1    # Z

    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "FullScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_VALUE"

    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    :cond_1
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private preloadRecentApps()V
    .locals 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v0, v3, :cond_4

    :cond_3
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_4
    return-void
.end method

.method private readRotation(I)I
    .locals 2
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private refreshKnoxInfo()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKnoxActivated:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    :cond_0
    return-void
.end method

.method private requestKidsQuickPanelOpen()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.kidsplat.quickpanel.PANEL_OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    return-void
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V
    .locals 6
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Z

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "WindowManager"

    const-string v4, "Not showing transient bar, becuase Factory mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v1

    if-eqz p2, :cond_3

    const-string v3, "WindowManager"

    const-string v5, "Force showing transient bar"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    :goto_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_8

    :cond_2
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_2
    xor-int v3, v2, v1

    if-eqz v3, :cond_5

    if-eq v0, p1, :cond_5

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    :cond_6
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    :cond_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private requestTransientCocktailBar(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "WindowManager"

    const-string v2, "Not showing transient bar, becuase Factory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v1, p1, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/BarController;->updateTransientShow(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateCocktailBarVisibilityLw()V

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private rotationForSecondLcdOrientationLw(II)I
    .locals 10
    .param p1    # I
    .param p2    # I

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2nd LCD, rotationForSecondLcdOrientationLw(orient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", last="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "); user="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v6, :cond_0

    const-string v2, "USER_ROTATION_LOCKED"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " sensorRotation="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    :goto_1
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    monitor-exit v3

    return v0

    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-nez v2, :cond_2

    if-eq p1, v7, :cond_3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb

    if-eq p1, v2, :cond_3

    const/16 v2, 0xc

    if-eq p1, v2, :cond_3

    if-eq p1, v9, :cond_3

    :cond_2
    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    if-eq p1, v8, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    :cond_3
    if-ne v1, v7, :cond_4

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v2, v6, :cond_4

    if-eq p1, v8, :cond_4

    if-ne p1, v9, :cond_5

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v6, :cond_7

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setStatusBarExpandable(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 5
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_5

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v4

    if-ne v1, v4, :cond_6

    move v1, v2

    :goto_2
    move v3, v1

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method private startCustomApp()Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-nez v9, :cond_1

    const-string v8, "WindowManager"

    const-string v9, "mKnoxCustomManager null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getRecentLongPressMode()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-ne v3, v8, :cond_2

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Foreground taskName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startCustomApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string v8, "WindowManager"

    const-string v9, "appToStart null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting custom app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v8

    goto/16 :goto_0
.end method

.method private takeScreenshot()V
    .locals 8

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private toggleRecentApps()V
    .locals 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    const-string v3, "recentapps"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstRecentKeyClick:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRecentMultiWindowUI:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstRecentKeyClick:Z

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.multiwindow.recentkey.start"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "WindowManager"

    const-string v4, "RemoteException when showing recent apps"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateCocktailBarVisibilityLw()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(Z)I

    move-result v2

    const-string v3, "updateCocktailBarVisibility"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(Z)I

    move-result v2

    const-string v3, "updateCocktailBarVisibility"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 20
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # I
    .param p3    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    or-int/lit8 p3, p3, 0x4

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    or-int/lit8 p3, p3, 0x4

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x7d0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v14, 0x1

    :goto_1
    if-eqz v14, :cond_3

    const v6, -0x3fffe7fa

    const v18, 0x3fffe7f9

    and-int v18, v18, p3

    and-int v19, p2, v6

    or-int p3, v18, v19

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v18

    if-nez v18, :cond_4

    const v18, 0x3fffffff

    and-int p3, p3, v18

    :cond_4
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_d

    const/4 v9, 0x1

    :goto_3
    and-int/lit8 v18, p3, 0x4

    if-eqz v18, :cond_e

    const/4 v8, 0x1

    :goto_4
    and-int/lit8 v18, p3, 0x2

    if-eqz v18, :cond_f

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    if-nez v9, :cond_6

    if-eqz v8, :cond_5

    if-nez v10, :cond_6

    :cond_5
    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    :cond_6
    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    if-eqz v7, :cond_11

    if-eqz v10, :cond_11

    const/16 v16, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_12

    if-nez v17, :cond_12

    if-eqz v8, :cond_12

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_13

    if-nez v16, :cond_13

    const/4 v4, 0x1

    :goto_9
    if-nez v5, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->clearClearableFlagsLw()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v11

    if-eqz p1, :cond_9

    if-eq v12, v11, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    return p3

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_0

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_12
    const/4 v5, 0x0

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    goto :goto_9
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_0
    if-nez v4, :cond_1

    move v0, v5

    :goto_1
    return v0

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d4

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int v2, v6, v7

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v6, :cond_3

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v6, v7, :cond_3

    and-int/lit8 v2, v2, -0x8

    :cond_3
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v4, v6, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v3, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-nez v0, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v6, v1, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-ne v6, v7, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$47;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$47;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private waitForCocktail(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$36;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$36;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0
.end method

.method private waitForCocktailWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$37;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$37;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "No cocktail bar! waitForWindowDrawn false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cocktail bar! windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$38;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$38;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "No keyguard interface!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$39;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$39;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "No lock screen! waitForWindowDrawn false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No lock screen! windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Bitmap;I)Landroid/view/View;
    .locals 15
    .param p1    # Landroid/os/IBinder;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Landroid/content/res/CompatibilityInfo;
    .param p5    # Ljava/lang/CharSequence;
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I
    .param p10    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p11    # Landroid/graphics/Bitmap;
    .param p12    # I

    if-nez p2, :cond_1

    const/4 v12, 0x0

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    const/4 v11, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    move/from16 v0, p3

    if-ne v0, v12, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-nez v12, :cond_4

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    const/4 v12, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    or-int/lit8 v12, p9, 0x10

    or-int/lit8 v12, v12, 0x8

    const/high16 v13, 0x20000

    or-int/2addr v12, v13

    or-int/lit8 v13, p9, 0x10

    or-int/lit8 v13, v13, 0x8

    const/high16 v14, 0x20000

    or-int/2addr v13, v14

    invoke-virtual {v10, v12, v13}, Landroid/view/Window;->setFlags(II)V

    move/from16 v0, p7

    invoke-virtual {v10, v0}, Landroid/view/Window;->setDefaultIcon(I)V

    move/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/view/Window;->setDefaultLogo(I)V

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual {v10, v12, v13}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v0, p2

    iput-object v0, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v12

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v12

    if-nez v12, :cond_6

    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    const/4 v12, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    :try_start_4
    const-string v12, "window"

    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/view/WindowManager;

    move-object v11, v0

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrecapFeature:Z

    if-eqz v12, :cond_8

    const/4 v4, 0x0

    if-eqz p11, :cond_9

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    const/high16 v12, 0x3f800000

    const/high16 v13, 0x3f800000

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object v12, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v9, v4

    :cond_8
    :goto_2
    invoke-virtual {v10}, Landroid/view/Window;->isFloating()Z
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    if-lez p12, :cond_8

    :try_start_5
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p12

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    const/high16 v12, 0x3f800000

    const/high16 v13, 0x3f800000

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object v12, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v9, v4

    goto :goto_2

    :cond_a
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    move-object v12, v0

    const/high16 v13, 0x60000

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_b
    invoke-interface {v11, v9, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    if-eqz v12, :cond_c

    move-object v12, v9

    :goto_3
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_6
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " already running, starting window not displayed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_d

    const-string v12, "WindowManager"

    const-string v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_d
    :goto_4
    const/4 v12, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_7
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " failed creating starting window"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_d

    const-string v12, "WindowManager"

    const-string v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_4

    :catchall_0
    move-exception v12

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_e

    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_e
    throw v12

    :catch_2
    move-exception v12

    goto/16 :goto_1
.end method

.method public adjustCocktailBarVisibilityLw(Z)Z
    .locals 7
    .param p1    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustCocktailBarVisibilityLw visibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currentStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->getCurrentTransientBarState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShiftShowing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShifting()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->isTransientHiding()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/BarController;->adjustCocktailBarVisibilityLw(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(Z)I

    move v3, v2

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(Z)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(Z)V

    :cond_5
    :goto_2
    move v3, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->isTransientHiding()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(Z)V

    goto :goto_2
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x2

    const/4 v1, 0x1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_1

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_2

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1    # Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :sswitch_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x10100

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
        0x832 -> :sswitch_1
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method applyAlphaScreenPolicyFrames(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;
    .param p3    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p4    # Landroid/graphics/Rect;
    .param p5    # Landroid/graphics/Rect;
    .param p6    # Landroid/graphics/Rect;
    .param p7    # Landroid/graphics/Rect;
    .param p8    # Landroid/graphics/Rect;
    .param p9    # Landroid/graphics/Rect;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    if-ne v0, v1, :cond_1

    iget v0, p4, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p4, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p4, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p5, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p5, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p5, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p5, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p6, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p6, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p6, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p6, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p7, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p7, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p7, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p7, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p8, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p8, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p8, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p8, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p8, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p9, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p9, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p9, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p9, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iput v0, p5, Landroid/graphics/Rect;->left:I

    iput v0, p4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iput v0, p5, Landroid/graphics/Rect;->top:I

    iput v0, p4, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    iput v0, p5, Landroid/graphics/Rect;->right:I

    iput v0, p4, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p9, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iput v0, p5, Landroid/graphics/Rect;->left:I

    iput v0, p4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iput v0, p5, Landroid/graphics/Rect;->top:I

    iput v0, p4, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    iput v0, p5, Landroid/graphics/Rect;->right:I

    iput v0, p4, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v0, v1

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p9, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    if-ne v0, v1, :cond_1

    iget v0, p4, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p4, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p4, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p5, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p5, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p5, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p5, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p6, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p6, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p6, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p6, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p7, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p7, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p7, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p7, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p8, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p8, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p8, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p8, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p8, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p9, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p9, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p9, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p9, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7eb -> :sswitch_1
        0x8ad -> :sswitch_0
        0x8ae -> :sswitch_0
        0x8ca -> :sswitch_0
    .end sparse-switch
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 11
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7db

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_e

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v7

    if-nez v7, :cond_e

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_1

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-ne v7, v8, :cond_19

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_1
    :goto_0
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRecentMultiWindowUI:Z

    if-eqz v7, :cond_3

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x82f

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBar:Z

    :cond_3
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_4

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x63

    if-le v7, v8, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7ef

    if-ne v7, v8, :cond_1a

    :cond_5
    const/4 v0, 0x1

    :goto_1
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v7, v8, :cond_7

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v7, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    const/4 v0, 0x1

    :cond_7
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_1b

    const/4 v6, 0x1

    :goto_2
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-eqz v7, :cond_1c

    const/4 v3, 0x1

    :goto_3
    if-eqz v0, :cond_e

    if-nez v6, :cond_8

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v7

    if-nez v7, :cond_1d

    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v7, v8, :cond_a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-nez v7, :cond_9

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v7, v8, :cond_a

    :cond_9
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_a
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v6, :cond_c

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-eqz v7, :cond_c

    iget-wide v7, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceUserActivityTimeoutWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v7, p1, :cond_c

    :cond_b
    const-wide/16 v7, 0x146a

    iput-wide v7, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v7, 0x0

    iput-wide v7, p2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceUserActivityTimeoutWin:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_c
    if-eqz v3, :cond_d

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v7, p1, :cond_1e

    const/4 v7, 0x2

    :goto_5
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v7, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_d
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v7, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v7, :cond_13

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_11

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v2

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_f

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x63

    if-gt v7, v8, :cond_f

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-nez v7, :cond_10

    :cond_f
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_20

    if-eqz v2, :cond_20

    :cond_10
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_11

    const/4 v7, 0x1

    if-ne v2, v7, :cond_21

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    sget-boolean v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_11

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hide sview cover always : SViewCoverWindow = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_8
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x832

    if-ne v7, v8, :cond_12

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBar:Z

    :cond_12
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    if-eqz v7, :cond_13

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    :cond_13
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_14

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_14

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_22

    :cond_14
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_22

    const/4 v4, 0x1

    :goto_9
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_15

    if-eqz v4, :cond_15

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :cond_15
    if-eqz v4, :cond_16

    const/high16 v7, 0x200000

    invoke-virtual {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_23

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCenterbar:Z

    :cond_16
    :goto_a
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBar:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    :cond_17
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_18

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_26

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x63

    if-gt v7, v8, :cond_26

    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_18

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrStarting()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    if-eqz v7, :cond_18

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_18
    return-void

    :cond_19
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    if-nez v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_0

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_1d
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1e
    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_21
    const/4 v7, 0x2

    if-ne v2, v7, :cond_11

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    sget-boolean v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_11

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hide sview cover once : SViewCoverWindow = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_23
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_24

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_a

    :cond_24
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_16

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_a

    :cond_25
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-nez v7, :cond_16

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_a

    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_b
.end method

.method public beginLayoutLw(ZIII)V
    .locals 43
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I

    if-eqz p1, :cond_10

    packed-switch p4, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v31, v0

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int v2, p2, v32

    sub-int v2, v2, v33

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v2, p3, v34

    sub-int v2, v2, v31

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int v2, p2, v33

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    sub-int v2, p3, v31

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCenterbar:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeGetSViewCoverSize()Z

    move-result v2

    if-eqz v2, :cond_0

    packed-switch p4, :pswitch_data_1

    const/16 v19, 0x0

    move/from16 v18, v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v17, p3, v2

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    sub-int v2, p2, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    sub-int v2, p3, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    add-int v2, v32, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int v2, v34, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int v2, p2, v32

    sub-int v2, v2, v33

    sub-int v2, v2, v18

    sub-int v2, v2, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v2, p3, v34

    sub-int v2, v2, v31

    sub-int v2, v2, v20

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int v2, p2, v33

    sub-int v2, v2, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    sub-int v2, p3, v31

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    :cond_0
    sget-object v35, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v22, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v30, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v42, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v42

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v42

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v42

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v42

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v38, v0

    and-int/lit8 v2, v38, 0x2

    if-nez v2, :cond_11

    const/16 v29, 0x1

    :goto_2
    const/high16 v2, -0x80000000

    and-int v2, v2, v38

    if-eqz v2, :cond_12

    const/16 v28, 0x1

    :goto_3
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_13

    const/16 v24, 0x1

    :goto_4
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_14

    const/16 v25, 0x1

    :goto_5
    if-nez v24, :cond_1

    if-eqz v25, :cond_15

    :cond_1
    const/16 v27, 0x1

    :goto_6
    if-nez v25, :cond_16

    const/4 v2, 0x1

    :goto_7
    and-int v28, v28, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v28, v28, v2

    if-nez v29, :cond_2

    if-eqz v27, :cond_17

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    :cond_3
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    :goto_9
    or-int v29, v29, v2

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v40

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_19

    :cond_4
    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_1c

    sub-int v2, p3, v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    sub-int v39, v2, v3

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p3, v31

    move/from16 v0, v39

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-eqz v40, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    :goto_b
    if-eqz v29, :cond_5

    if-nez v28, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    :cond_5
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object/from16 v8, v21

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v41, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v2, :cond_7

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarDirection:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v23, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    sub-int v12, v2, v3

    packed-switch p4, :pswitch_data_2

    const/4 v13, 0x0

    move/from16 v16, v13

    move v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v12, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShiftShowing()Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    sub-int v3, p2, v3

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_d
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    sub-int v3, p2, v3

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_e
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    sub-int v2, p2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    sub-int v2, p3, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    add-int v2, v32, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    add-int v2, v34, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int v2, p2, v32

    sub-int v2, v2, v33

    sub-int/2addr v2, v14

    sub-int/2addr v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    sub-int v2, p3, v34

    sub-int v2, v2, v31

    sub-int v2, v2, v16

    sub-int/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int v2, p2, v33

    sub-int/2addr v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    sub-int v2, p3, v31

    sub-int/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v8, v21

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v42

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v42

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v42

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v42

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v35

    move-object/from16 v4, v22

    move-object/from16 v5, v42

    move-object/from16 v6, v42

    move-object/from16 v7, v42

    move-object/from16 v8, v21

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    :cond_8
    const/high16 v2, 0x4000000

    and-int v2, v2, v38

    if-eqz v2, :cond_23

    const/16 v36, 0x1

    :goto_f
    const/high16 v2, 0x40000000

    and-int v2, v2, v38

    if-eqz v2, :cond_24

    const/16 v37, 0x1

    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v37, v37, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v36, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z

    if-eqz v2, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_d

    if-nez v36, :cond_d

    if-nez v37, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v41, 0x1

    :cond_e
    if-eqz v41, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v31, v0

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v31, v0

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v31, v0

    goto/16 :goto_0

    :cond_10
    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v33, 0x0

    const/16 v31, 0x0

    goto/16 :goto_0

    :pswitch_3
    const/16 v18, 0x0

    const/16 v17, 0x0

    move/from16 v20, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v19, p2, v2

    goto/16 :goto_1

    :pswitch_4
    const/16 v19, 0x0

    move/from16 v18, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v20, p3, v2

    const/16 v17, 0x0

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v18, p2, v2

    const/16 v17, 0x0

    move/from16 v20, v17

    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_12
    const/16 v28, 0x0

    goto/16 :goto_3

    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_4

    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_5

    :cond_15
    const/16 v27, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_8

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_1a
    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_b

    :cond_1c
    sub-int v2, p2, v33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    sub-int v26, v2, v3

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p2, v33

    move/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-eqz v40, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    :goto_11
    if-eqz v29, :cond_5

    if-nez v28, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_c

    :cond_1d
    if-eqz v29, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_11

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto :goto_11

    :pswitch_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBarForCocktail:Z

    const/4 v13, 0x0

    move v15, v13

    move v14, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v16, v0

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v12, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShiftShowing()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_12
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_e

    :cond_1f
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v0, v23

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_12

    :pswitch_7
    const/4 v13, 0x0

    move/from16 v16, v13

    move v15, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShiftShowing()Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_13
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_e

    :cond_20
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move/from16 v0, v23

    neg-int v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_13

    :pswitch_8
    const/16 v16, 0x0

    move/from16 v15, v16

    move/from16 v14, v16

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v12}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShiftShowing()Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    sub-int v4, p3, v4

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_14
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    sub-int v4, p3, v4

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_e

    :cond_21
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v4, p3, v4

    add-int v5, p3, v23

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_14

    :cond_22
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v3, p2, v3

    const/4 v4, 0x0

    add-int v5, p2, v23

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_d

    :cond_23
    const/16 v36, 0x0

    goto/16 :goto_f

    :cond_24
    const/16 v37, 0x0

    goto/16 :goto_10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBar:Z

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    :cond_0
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x898

    if-eq v1, v2, :cond_0

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x899

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :cond_1
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ed -> :sswitch_0
        0x832 -> :sswitch_0
        0x833 -> :sswitch_0
        0x8ac -> :sswitch_0
    .end sparse-switch
.end method

.method public canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v0

    if-nez v0, :cond_1

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v1, v2

    :goto_0
    :sswitch_0
    return v1

    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x832 -> :sswitch_0
        0x833 -> :sswitch_0
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_0
    .end sparse-switch
.end method

.method public canBeForceHiddenByVR(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7da -> :sswitch_0
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x834 -> :sswitch_0
        0x835 -> :sswitch_0
        0x836 -> :sswitch_0
        0x837 -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canMagnifyWindow(Landroid/view/WindowManagerPolicy$WindowState;I)Z

    move-result v0

    return v0
.end method

.method public canMagnifyWindow(Landroid/view/WindowManagerPolicy$WindowState;I)Z
    .locals 3
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # I

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    if-lez v2, :cond_0

    sparse-switch p2, :sswitch_data_0

    move v0, v1

    :goto_0
    :sswitch_0
    return v0

    :cond_0
    sparse-switch p2, :sswitch_data_1

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7e9 -> :sswitch_0
        0x7eb -> :sswitch_0
        0x8ca -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_0
    .end sparse-switch
.end method

.method public cancelPendingPowerKey()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    return-void
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 4
    .param p1    # Landroid/view/WindowManager$LayoutParams;
    .param p2    # [I

    const/4 v2, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, -0x1

    aput v3, p2, v2

    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v3, 0xbb6

    if-eq v1, v3, :cond_0

    const/16 v3, 0x8fc

    if-eq v1, v3, :cond_0

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_2
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    :goto_1
    :sswitch_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, -0x8

    goto :goto_0

    :sswitch_1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    const/16 v3, 0x18

    aput v3, p2, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "com.samsung.android.permission.BIND_KMS"

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_1
        0x7d7 -> :sswitch_1
        0x7da -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_3
        0x7f0 -> :sswitch_3
        0x830 -> :sswitch_0
        0x831 -> :sswitch_0
        0x833 -> :sswitch_1
        0x834 -> :sswitch_0
        0x835 -> :sswitch_0
        0x8cb -> :sswitch_2
    .end sparse-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1    # Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ec -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
        0x832 -> :sswitch_0
        0x833 -> :sswitch_0
    .end sparse-switch
.end method

.method public checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTabletUXConcept:Z

    if-eqz v1, :cond_1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v1, :cond_2

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v1, :cond_2

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v3, :cond_2

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v3, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_0

    :cond_2
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x30000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .locals 3
    .param p1    # Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$44;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$44;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockIntent:Landroid/content/Intent;

    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    move-object v2, v3

    :goto_2
    return-object v4

    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0x10080

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.dock_home"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v2

    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v3, v2

    goto :goto_1
.end method

.method public dismissKeyguardLw()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$40;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$40;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1    # Landroid/view/KeyEvent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1    # Landroid/view/KeyEvent;

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1    # Landroid/view/KeyEvent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 24
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/KeyEvent;
    .param p3    # I

    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v20, 0x1

    :goto_0
    if-eqz v20, :cond_3

    invoke-virtual/range {v21 .. v23}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v18

    :goto_1
    if-eqz v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v18

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v18

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v4 .. v17}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/view/KeyEvent;->recycle()V

    const/16 v19, 0x0

    :cond_0
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_2
    return-object v19

    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/KeyCharacterMap$FallbackAction;

    goto :goto_1

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doesForceHideBySViewCover()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->canGlobalActionsShow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCoverCloseRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_a

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_e

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceTransientBars="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHideSViewCoverWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEasyOneHandEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->changeLidState(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 15

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    :goto_0
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v12, :cond_0

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    :cond_0
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_3

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v12, :cond_1

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v12, :cond_16

    :cond_1
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v12, v10}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v12

    if-eqz v12, :cond_2

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    :cond_2
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v12, :cond_15

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v12

    if-eqz v12, :cond_15

    move v8, v10

    :goto_1
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v12, v11, v13, v14}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    :cond_3
    :goto_2
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v12, v8, :cond_5

    if-nez v8, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    :cond_5
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v12, v8, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setOpenByNotification(ZZ)V

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_8

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v12, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v12

    if-nez v12, :cond_1f

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v12, :cond_6

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    if-eqz v12, :cond_6

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    or-int/lit8 v0, v0, 0x7

    :cond_7
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v12

    const v13, -0x3ffffffa

    and-int/2addr v12, v13

    if-eqz v12, :cond_9

    or-int/lit8 v0, v0, 0x1

    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v12, v12, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_c

    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "finishPostLayoutPolicyLw: mHideSViewCover="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    if-nez v12, :cond_b

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v12

    if-eqz v12, :cond_2a

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTphoneRelaxMode()Z

    move-result v12

    if-nez v12, :cond_2a

    :cond_b
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v12

    if-eqz v12, :cond_c

    or-int/lit8 v0, v0, 0x1

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHideTrayBar()Z

    move-result v12

    if-eqz v12, :cond_2b

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v12

    if-nez v12, :cond_e

    :cond_d
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10, v10, v10}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10, v10, v10}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    :cond_e
    :goto_6
    const/4 v5, 0x0

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_2e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v12

    if-ne v12, v10, :cond_2e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v12

    if-nez v12, :cond_2e

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    if-nez v12, :cond_2e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v12

    if-nez v12, :cond_2e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHideTrayBar()Z

    move-result v12

    if-nez v12, :cond_2e

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCenterbar:Z

    if-nez v12, :cond_2e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v12, :cond_2c

    move v6, v11

    :goto_7
    if-ne v7, v6, :cond_2d

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_2d

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v12

    if-eqz v12, :cond_2d

    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_30

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v12, :cond_2f

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSplit:Z

    if-nez v12, :cond_2f

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSplit:Z

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    :goto_9
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_13

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_13

    :cond_10
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_31

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    :goto_a
    if-nez v1, :cond_11

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_34

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->isHomeApp()Z

    move-result v9

    if-eqz v9, :cond_34

    :cond_11
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    if-eq v9, v11, :cond_12

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    or-int/lit8 v0, v0, 0x1

    :cond_12
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUserSetupComplete()Z

    move-result v9

    if-nez v9, :cond_32

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInitCocktailBar:Z

    if-nez v9, :cond_13

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInitCocktailBar:Z

    const v9, 0xfffe

    const-string v10, "init"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V

    :cond_13
    :goto_b
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    return v0

    :cond_14
    move-object v2, v9

    goto/16 :goto_0

    :cond_15
    move v8, v11

    goto/16 :goto_1

    :cond_16
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_3

    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x400

    if-nez v12, :cond_17

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_17

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-nez v12, :cond_17

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideStatusBar:Z

    if-eqz v12, :cond_1a

    :cond_17
    move v8, v10

    :goto_c
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v12, v12, 0x2000

    if-nez v12, :cond_18

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    if-eqz v12, :cond_1b

    :cond_18
    move v3, v10

    :goto_d
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v12

    if-eqz v12, :cond_1c

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v12, v10}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v12

    if-eqz v12, :cond_19

    or-int/lit8 v0, v0, 0x1

    :cond_19
    if-nez v8, :cond_3

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    goto/16 :goto_2

    :cond_1a
    move v8, v11

    goto :goto_c

    :cond_1b
    move v3, v11

    goto :goto_d

    :cond_1c
    if-eqz v8, :cond_1d

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v12, v11}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v12

    if-eqz v12, :cond_3

    or-int/lit8 v0, v0, 0x1

    const/4 v12, 0x4

    invoke-direct {p0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_1d
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v12, v10}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v12

    if-eqz v12, :cond_3

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto/16 :goto_2

    :cond_1e
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_1f
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v12, :cond_24

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    if-eqz v12, :cond_22

    move v12, v11

    :goto_e
    invoke-interface {v13, v12}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v12

    if-eqz v12, :cond_21

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v12, :cond_20

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    if-eqz v12, :cond_20

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v12

    if-eqz v12, :cond_23

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_20
    :goto_f
    or-int/lit8 v0, v0, 0x7

    :cond_21
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v12, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_4

    :cond_22
    move v12, v10

    goto :goto_e

    :cond_23
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    :cond_24
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v12, :cond_28

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v12, v10, :cond_26

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v12

    if-eqz v12, :cond_25

    or-int/lit8 v0, v0, 0x7

    :cond_25
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v12, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v13, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_26
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v12

    if-eqz v12, :cond_27

    or-int/lit8 v0, v0, 0x7

    :cond_27
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v12, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_4

    :cond_28
    iput-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v12

    if-eqz v12, :cond_29

    or-int/lit8 v0, v0, 0x7

    :cond_29
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v12, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_4

    :cond_2a
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v12

    if-eqz v12, :cond_c

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_2b
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v10}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_6

    :cond_2c
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    goto/16 :goto_7

    :cond_2d
    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_2e
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_2f
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_f

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_9

    :cond_30
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v12, :cond_f

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12, v11, v10, v10}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto/16 :goto_9

    :cond_31
    move-object v4, v9

    goto/16 :goto_a

    :cond_32
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientShift()Z

    move-result v9

    if-eqz v9, :cond_33

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v10, v10, v10}, Lcom/android/internal/policy/impl/BarController;->updateTransientState(ZZZ)I

    move-result v9

    const-string v10, "Home(keyguard)"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_33
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparent()Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v10, v10, v10}, Lcom/android/internal/policy/impl/BarController;->updateTransientState(ZZZ)I

    move-result v9

    const-string v11, "Home(keyguard)"

    invoke-direct {p0, v9, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparentShifting()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/BarController;->setCocktailBarShowingLw(Z)Z

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_34
    if-eqz v4, :cond_38

    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v12, 0x20000000

    and-int/2addr v9, v12

    if-eqz v9, :cond_38

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    if-eq v9, v10, :cond_35

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    or-int/lit8 v0, v0, 0x1

    :cond_35
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShifting()Z

    move-result v9

    if-eqz v9, :cond_36

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v11, v11, v11}, Lcom/android/internal/policy/impl/BarController;->updateTransientState(ZZZ)I

    move-result v9

    const-string v10, "fullApp"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v11, v11}, Lcom/android/internal/policy/impl/BarController;->setCocktailBarShowingLw(ZZ)Z

    move-result v9

    if-eqz v9, :cond_13

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_36
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientNone()Z

    move-result v9

    if-nez v9, :cond_37

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShiftShowing()Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_37
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v11, v11, v11}, Lcom/android/internal/policy/impl/BarController;->updateTransientState(ZZZ)I

    move-result v9

    const-string v10, "fullApp"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_38
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientShifting()Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientShiftShowing()Z

    move-result v9

    if-nez v9, :cond_13

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v10, v10, v11}, Lcom/android/internal/policy/impl/BarController;->updateTransientState(ZZZ)I

    move-result v9

    const-string v11, "others"

    invoke-direct {p0, v9, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyCocktailBarVisibility(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientShiftShowing()Z

    move-result v9

    if-nez v9, :cond_39

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/BarController;->setCocktailBarShowingLw(Z)Z

    :cond_39
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_b
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManagerPolicy$WindowState;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3ffffffa

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAboveUniverseLayer()I
    .locals 1

    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getCocktailBarFrame()Landroid/graphics/Rect;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :pswitch_0
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCocktailSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    return v0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8
    .param p1    # Landroid/view/WindowManager$LayoutParams;
    .param p2    # Landroid/graphics/Rect;

    const v6, 0x10100

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    and-int v4, v2, v6

    if-ne v4, v6, :cond_6

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_0

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    :goto_0
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void

    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    and-int/lit16 v4, v2, 0x400

    if-nez v4, :cond_3

    const/high16 v4, 0x2000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_4
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getDockMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    return v0
.end method

.method public getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 7
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v4, v1

    :goto_0
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v6, v2

    if-eqz v6, :cond_2

    :cond_0
    :goto_1
    return v5

    :cond_1
    move-object v4, p1

    goto :goto_0

    :cond_2
    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_3

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_4

    :cond_3
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_0

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_0

    :cond_4
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    goto :goto_1
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .locals 3
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, 0x4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    monitor-exit v4

    return v2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getMinimizeSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    return v0
.end method

.method public getNonDecorAlphaScreenDisplayHeight(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p2, v0

    :cond_0
    return p2
.end method

.method public getNonDecorAlphaScreenDisplayWidth(II)I
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v1, :cond_0

    if-ge p1, p2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p1, v1

    move v0, p1

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I

    move v0, p2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_0

    if-ge p1, p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v1, :cond_2

    if-le p1, p2, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I

    move v0, p1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_0

    if-le p1, p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v1, :cond_1

    if-ge p1, p2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getSViewCoverHeight(Landroid/view/DisplayInfo;)I
    .locals 1
    .param p1    # Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    goto :goto_0
.end method

.method public getSViewCoverWidth(Landroid/view/DisplayInfo;)I
    .locals 1
    .param p1    # Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    goto :goto_0
.end method

.method public getScaleWindowResizableSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScaleWindowResizableSize:I

    return v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserRotationMode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method goHome()Z
    .locals 19

    :try_start_0
    const-string v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "WindowManager"

    const-string v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v18

    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleVolumeKey(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/16 v5, 0x18

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    if-ne p2, v5, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    if-ne p2, v5, :cond_3

    :goto_3
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjust*StreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasCocktailBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$43;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$43;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/IWindowManager;
    .param p3    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v8, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRecentMultiWindowUI:Z

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v9, "com.sec.android.app.FlashBarService"

    const-string v10, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    new-instance v8, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p1, v9}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.CAR_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v8, "1"

    const-string v9, "ro.debuggable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    const v8, 0x10e0015

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    const v8, 0x10e0078

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    const v8, 0x10e0017

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    const v8, 0x10e0016

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    const v8, 0x10e0018

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    const v8, 0x10e0047

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110053

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111002d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110063

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    if-eqz v8, :cond_0

    const-string v8, "hardware"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLight:Landroid/os/IHardwareService;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLight:Landroid/os/IHardwareService;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v1, v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/4 v8, 0x3

    if-ge v1, v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v8, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-direct {v8, p1, v9}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    new-instance v8, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v8, "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKidsModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001b

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001c

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001d

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001e

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001f

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    new-instance v8, Lcom/android/internal/policy/impl/GlobalKeyManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/policy/impl/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cover.flip"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cover.sview"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v8, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    new-instance v8, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v8}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_5
    new-instance v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual {v8, v9, p0, v10, v11}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "PolicyKey"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyThread:Landroid/os/HandlerThread;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v8, "android.intent.extra.device_state"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmartDock Connected  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    const-string v8, "com.sec.android.intent.action.PAUSE_WATCH"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v8, "com.sec.android.intent.action.QUICK_SHOT"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickShotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    :goto_4
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "2.0"

    const-string v9, "version"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    :cond_7
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableLockScreenRotations:I

    if-gez v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_5
    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableLockScreenRotations:I

    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111008b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailSize:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500a5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailShiftSize:I

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailCurrentSize:I

    return-void

    :cond_9
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto/16 :goto_3

    :cond_a
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method initializeHdmiState()V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v2, "/sys/class/switch/hdmi/state"

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0xf

    :try_start_1
    new-array v0, v9, [C

    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    if-le v3, v7, :cond_0

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    if-nez v4, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    return-void

    :cond_2
    move v4, v8

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_5
    :try_start_5
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_7
    throw v7

    :cond_4
    move v9, v8

    goto :goto_2

    :cond_5
    move v7, v8

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_7

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v5, v6

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v5, v6

    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 61
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/KeyEvent;
    .param p3    # I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v45

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v20, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    const/16 v3, 0x19

    move/from16 v0, v32

    if-eq v0, v3, :cond_0

    const/16 v3, 0x18

    move/from16 v0, v32

    if-ne v0, v3, :cond_3

    :cond_0
    if-eqz v45, :cond_3

    const/16 v58, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v22

    if-eqz v22, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v58

    :cond_1
    if-nez v58, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v5, 0x1

    move/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleSamsungVolumeControl(IZZ)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    const-wide/16 v5, -0x1

    :goto_1
    return-wide v5

    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v28, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v28

    const/16 v3, 0x18

    move/from16 v0, v32

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    if-eqz v3, :cond_4

    const/16 v28, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    :cond_4
    :goto_2
    if-nez v28, :cond_7

    const-wide/16 v5, -0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v28

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v28

    goto :goto_2

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    move-wide/from16 v1, v40

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTimeoutTimeOfKeyCombination(Landroid/view/KeyEvent;J)J

    move-result-wide v52

    cmp-long v3, v40, v52

    if-gez v3, :cond_8

    sub-long v5, v52, v40

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    move/from16 v0, v32

    if-eq v0, v3, :cond_b

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "WindowManager"

    const-string v5, "interceptKeyTi : Key was blocked by access control"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTi : Key was blocked by sidesync. keycode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", repeatCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_d
    const/16 v3, 0x52

    move/from16 v0, v32

    if-ne v0, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startCustomApp()Z

    move-result v3

    if-eqz v3, :cond_e

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x3

    move/from16 v0, v32

    if-ne v0, v3, :cond_41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v34

    if-eqz v34, :cond_11

    const/16 v28, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v28

    :goto_3
    if-nez v28, :cond_11

    const-string v3, "WindowManager"

    const-string v5, "home key disabled by edm"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v28

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-gtz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const-string v3, "WindowManager"

    const-string v5, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v3, :cond_15

    sget v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPhoneCaller()I

    move-result v3

    const/16 v5, 0x64

    if-lt v3, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPhoneCaller()I

    move-result v43

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v51

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Landroid/os/PersonaManager;->settingSyncAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v51, :cond_16

    invoke-interface/range {v51 .. v51}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "WindowManager"

    const-string v5, "going to previous knox mode."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Landroid/os/PersonaManager;->getLastShortcutState(I)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.knox.shortcutReinstate"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move/from16 v0, v43

    invoke-virtual {v3, v0, v5}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    :goto_4
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Landroid/os/PersonaManager;->switchPersona(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v21

    const-string v3, "WindowManager"

    const-string v5, "RemoteException occurs."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/PersonaManager;->setPhoneCaller(I)V

    :cond_15
    :goto_5
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v3, :cond_18

    sget v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    sget v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    invoke-virtual {v3, v5}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_17

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/pm/PersonaInfo;

    move-object/from16 v0, v42

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v3, :cond_18

    const-string v3, "WindowManager"

    const-string v5, "home button is disabled. Superlock state"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_16
    :try_start_1
    const-string v3, "WindowManager"

    const-string v5, "Persona doesn\'t exist or invalid."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/PersonaManager;->setPhoneCaller(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_17
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v3, :cond_19

    sget v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    const/16 v5, 0x64

    if-lt v3, v5, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    sget v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    invoke-virtual {v3, v5}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "WindowManager"

    const-string v5, "home button is disabled. Knox keyguard is foreground"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.knox.containeragent2.ui.keyguard.KeyguardService.KnoxKeyguardHomeButton"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1a

    const-string v3, "WindowManager"

    const-string v5, "Home key is send to SideSync"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "WindowManager"

    const-string v5, "Home key is blocked by policy"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockHomeKey()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "WindowManager"

    const-string v5, "Home key is blocked"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    if-eqz v3, :cond_1e

    const-string v3, "WindowManager"

    const-string v5, "Home key is blocked during watch is displayed"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_1e
    if-eqz p1, :cond_1f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v12, :cond_20

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_20

    const-string v3, "homekey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    const-wide/16 v5, 0x64

    goto/16 :goto_1

    :cond_1f
    const/4 v12, 0x0

    goto :goto_6

    :cond_20
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_21
    if-nez v20, :cond_31

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-nez v3, :cond_22

    const-string v3, "WindowManager"

    const-string v5, "Ignoring up event!! Coming up event without pressed."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_23

    const-string v3, "WindowManager"

    const-string v5, "Home consumed!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_24
    if-eqz v13, :cond_25

    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; event canceled."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_25
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v51

    if-eqz v51, :cond_26

    invoke-interface/range {v51 .. v51}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :catch_1
    move-exception v23

    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v23

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v30

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "anykey_mode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_27

    const/16 v29, 0x0

    :goto_7
    if-eqz v30, :cond_29

    if-eqz v29, :cond_29

    :try_start_3
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v57

    if-eqz v57, :cond_28

    invoke-interface/range {v57 .. v57}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    const-string v3, "WindowManager"

    const-string v5, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_27
    const/16 v29, 0x1

    goto :goto_7

    :cond_28
    const-string v3, "WindowManager"

    const-string v5, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_29
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "WindowManager"

    const-string v5, "Home triple tap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :catch_2
    move-exception v23

    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v23

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    const-wide/16 v59, 0x7d0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLaunchedMultipleTabActionTime:J

    add-long v5, v5, v59

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    sub-long v17, v5, v7

    const-wide/16 v5, 0x0

    cmp-long v3, v17, v5

    if-ltz v3, :cond_2d

    cmp-long v3, v17, v59

    if-lez v3, :cond_2e

    :cond_2d
    const-wide/16 v17, 0x0

    :cond_2e
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLaunchedMultipleTabActionTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    add-long v6, v6, v17

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2f

    const-string v3, "WindowManager"

    const-string v5, "Home double tap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setFingerPrintPending()V

    const/16 v46, 0x0

    if-eqz v12, :cond_38

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v54, v0

    const/16 v3, 0x7d4

    move/from16 v0, v54

    if-eq v0, v3, :cond_32

    const/16 v3, 0x7ed

    move/from16 v0, v54

    if-eq v0, v3, :cond_32

    const/16 v3, 0x7d9

    move/from16 v0, v54

    if-eq v0, v3, :cond_32

    const/16 v3, 0x7e7

    move/from16 v0, v54

    if-eq v0, v3, :cond_32

    const/16 v3, 0x832

    move/from16 v0, v54

    if-eq v0, v3, :cond_32

    const/16 v3, 0x8cb

    move/from16 v0, v54

    if-ne v0, v3, :cond_34

    :cond_32
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_33

    const-string v3, "WindowManager"

    const-string v5, "System window has focus. Send home key event."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/16 v3, 0x7d4

    move/from16 v0, v54

    if-ne v0, v3, :cond_36

    const/16 v46, 0x1

    :cond_34
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v3

    move/from16 v55, v0

    const/16 v26, 0x0

    :goto_9
    move/from16 v0, v26

    move/from16 v1, v55

    if-ge v0, v1, :cond_38

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v3, v3, v26

    move/from16 v0, v54

    if-ne v0, v3, :cond_37

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_35

    const-string v3, "WindowManager"

    const-string v5, "WHDW window has focus. Not working."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_36
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_37
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    :cond_38
    if-nez v45, :cond_3f

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleHomeKeyInRinging()I

    move-result v25

    if-gtz v25, :cond_39

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    move/from16 v0, v25

    int-to-long v5, v0

    goto/16 :goto_1

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v3, :cond_3c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    :cond_3a
    :goto_a
    if-eqz v46, :cond_40

    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLaunchedMultipleTabActionTime:J

    goto :goto_a

    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    if-eqz v3, :cond_3d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleTripleTapOnHome()V

    goto :goto_a

    :cond_3d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3a

    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_a

    :cond_3f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    if-nez v33, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-nez v3, :cond_3a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_a

    :cond_40
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_41
    const/16 v3, 0x52

    move/from16 v0, v32

    if-ne v0, v3, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_42

    if-eqz p1, :cond_42

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_42

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFixedBounds()Z

    move-result v3

    if-eqz v3, :cond_42

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_42
    const/4 v15, 0x1

    if-eqz v20, :cond_43

    if-nez v45, :cond_43

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v3, :cond_47

    and-int/lit8 v3, v38, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_47

    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_43
    if-eqz v20, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_44

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->checkMenuLongPressIgnore()Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v3, 0x7

    move/from16 v0, v45

    if-ne v0, v3, :cond_47

    if-nez v13, :cond_47

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_45

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_46

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v35

    if-eqz v35, :cond_46

    move-object/from16 v0, v35

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x100000

    and-int/2addr v3, v5

    if-eqz v3, :cond_46

    const/16 v39, 0x1

    :cond_46
    if-nez v39, :cond_47

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnMenu()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleMenuLongPress()Z

    move-result v3

    if-eqz v3, :cond_47

    :cond_47
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v3, :cond_82

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v31

    invoke-virtual/range {v31 .. v32}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_82

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v20, :cond_48

    if-nez v45, :cond_48

    if-nez v33, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v48

    if-eqz v48, :cond_81

    const/high16 v3, 0x10000000

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v48

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_48
    :goto_c
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_49
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_47

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnMenu()V

    goto :goto_b

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    if-eqz v3, :cond_4b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_4b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    goto :goto_b

    :cond_4c
    const/16 v3, 0x54

    move/from16 v0, v32

    if-ne v0, v3, :cond_4f

    if-eqz v20, :cond_4e

    if-nez v45, :cond_4d

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    :cond_4d
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_4e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_4d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_4f
    const/16 v3, 0x10f

    move/from16 v0, v32

    if-ne v0, v3, :cond_56

    if-eqz v20, :cond_55

    const-string v3, "WindowManager"

    const-string v5, "KEYCODE_SIM keyocde"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v3, "ril.ICC_TYPE_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v3, "0"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "0"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :cond_50
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "phone1_on"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_52

    const/16 v49, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "phone2_on"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_53

    const/16 v50, 0x1

    :goto_e
    or-int v3, v49, v50

    if-eqz v3, :cond_54

    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_52
    const/16 v49, 0x0

    goto :goto_d

    :cond_53
    const/16 v50, 0x0

    goto :goto_e

    :cond_54
    :try_start_5
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v51

    if-eqz v51, :cond_55

    invoke-interface/range {v51 .. v51}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v16

    add-int/lit8 v3, v16, 0x1

    rem-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v51

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_55
    :goto_f
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_56
    const/16 v3, 0xbb

    move/from16 v0, v32

    if-eq v0, v3, :cond_57

    const/16 v3, 0xe0

    move/from16 v0, v32

    if-ne v0, v3, :cond_66

    :cond_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_58

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_59

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_5b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-gtz v3, :cond_5a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_5b

    :cond_5a
    const-string v3, "WindowManager"

    const-string v5, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string v3, "WindowManager"

    const-string v5, "Recent key is blocked by policy"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0xbb

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockAppswitchKey()Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string v3, "WindowManager"

    const-string v5, "Appswitch key is blocked"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_5e
    if-nez v33, :cond_5f

    if-eqz v20, :cond_62

    if-nez v45, :cond_60

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    :cond_5f
    :goto_10
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_60
    const/4 v3, 0x7

    move/from16 v0, v45

    if-ne v0, v3, :cond_5f

    if-nez v13, :cond_5f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1110078

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_61

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_5f

    :cond_61
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongpressed:Z

    const/16 v3, 0x52

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->injectionKeyEvent(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_62
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongpressed:Z

    if-eqz v3, :cond_63

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongpressed:Z

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_63
    if-nez v13, :cond_65

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v56

    const-string v3, "2.0"

    const-string v5, "version"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/PersonaManager;

    sget v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/os/PersonaManager;->getShortcutMode(I)Z

    move-result v3

    if-eqz v3, :cond_64

    const-string v3, "WindowManager"

    const-string v5, "recent app disabled by shortcut mode"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_64
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto/16 :goto_10

    :cond_65
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    goto/16 :goto_10

    :cond_66
    const/16 v3, 0xdb

    move/from16 v0, v32

    if-ne v0, v3, :cond_6b

    if-eqz v20, :cond_69

    if-nez v45, :cond_68

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    :cond_67
    :goto_11
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_68
    const/4 v3, 0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_67

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-nez v33, :cond_67

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_11

    :cond_69
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v3, :cond_6a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_11

    :cond_6a
    if-nez v33, :cond_67

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_11

    :cond_6b
    const/16 v3, 0x78

    move/from16 v0, v32

    if-ne v0, v3, :cond_6f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_6c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_6c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_6d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_6d

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_6d
    if-eqz v20, :cond_6e

    if-nez v45, :cond_6e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6e
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_6f
    const/4 v3, 0x4

    move/from16 v0, v32

    if-eq v0, v3, :cond_70

    const/16 v3, 0x6f

    move/from16 v0, v32

    if-ne v0, v3, :cond_7a

    :cond_70
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v3

    if-eqz v3, :cond_73

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_73

    const/4 v3, 0x7

    move/from16 v0, v45

    if-ne v0, v3, :cond_71

    if-eqz v13, :cond_72

    :cond_71
    if-eqz v13, :cond_73

    :cond_72
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_73
    if-eqz v20, :cond_78

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v56

    const-string v3, "2.0"

    const-string v5, "version"

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/PersonaManager;

    sget v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    const/4 v5, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/os/PersonaManager;->setBackPressed(IZ)V

    :cond_74
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_75

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_75

    if-lez v45, :cond_75

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_75
    if-eqz v45, :cond_47

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_47

    const/4 v3, 0x7

    move/from16 v0, v45

    if-ne v0, v3, :cond_77

    if-nez v13, :cond_77

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_76

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MultiWindowTrayBar toggle / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_77
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_47

    if-lez v45, :cond_47

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_78
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_79

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_79
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v3

    if-eqz v3, :cond_47

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_7a
    const/16 v3, 0x1a

    move/from16 v0, v32

    if-ne v0, v3, :cond_7e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_7b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_7b
    if-eqz p1, :cond_7c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_47

    if-eqz v12, :cond_7d

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_7d

    const-string v3, "reason"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    const-wide/16 v5, 0x64

    goto/16 :goto_1

    :cond_7c
    const/4 v12, 0x0

    goto :goto_12

    :cond_7d
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_7e
    const/16 v3, 0x19

    move/from16 v0, v32

    if-eq v0, v3, :cond_7f

    const/16 v3, 0x18

    move/from16 v0, v32

    if-ne v0, v3, :cond_80

    :cond_7f
    if-eqz v20, :cond_47

    :try_start_6
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v51

    if-eqz v51, :cond_47

    invoke-interface/range {v51 .. v51}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "WindowManager"

    const-string v5, "Ignoring VOLUME KEY; there\'s a ringing incoming call."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v51 .. v51}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :catch_3
    move-exception v23

    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v23

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :cond_80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :catch_4
    move-exception v23

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v32 .. v32}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    :cond_81
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v32 .. v32}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_82
    if-eqz v20, :cond_83

    if-nez v45, :cond_83

    if-nez v33, :cond_83

    const/high16 v3, 0x10000

    and-int v3, v3, v38

    if-eqz v3, :cond_83

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v3

    if-nez v3, :cond_83

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v31

    invoke-virtual/range {v31 .. v32}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_83

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    const v5, -0x70001

    and-int v5, v5, v38

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v48

    if-eqz v48, :cond_83

    const/high16 v3, 0x10000000

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v48

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_13
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :catch_5
    move-exception v23

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v32 .. v32}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_83
    if-eqz v20, :cond_84

    if-nez v45, :cond_84

    if-nez v33, :cond_84

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_84

    const-string v3, "android.intent.action.MAIN"

    invoke-static {v3, v14}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v3, 0x10000000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_14
    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :catch_6
    move-exception v23

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_84
    if-eqz v20, :cond_86

    if-nez v45, :cond_86

    const/16 v3, 0x3d

    move/from16 v0, v32

    if-ne v0, v3, :cond_86

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-nez v3, :cond_87

    if-nez v33, :cond_87

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v3

    if-nez v3, :cond_87

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    and-int/lit16 v0, v3, -0xc2

    move/from16 v47, v0

    const/4 v3, 0x2

    move/from16 v0, v47

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-nez v3, :cond_85

    const/high16 v3, 0x10000

    move/from16 v0, v47

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_87

    :cond_85
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_86
    if-nez v20, :cond_87

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v3, :cond_87

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    and-int v3, v3, v38

    if-nez v3, :cond_87

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v33, :cond_89

    const/4 v3, 0x2

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    :cond_87
    if-eqz v20, :cond_8b

    if-nez v45, :cond_8b

    const/16 v3, 0xcc

    move/from16 v0, v32

    if-eq v0, v3, :cond_88

    const/16 v3, 0x3e

    move/from16 v0, v32

    if-ne v0, v3, :cond_8b

    move/from16 v0, v38

    and-int/lit16 v3, v0, 0x7000

    if-eqz v3, :cond_8b

    :cond_88
    move/from16 v0, v38

    and-int/lit16 v3, v0, 0xc1

    if-eqz v3, :cond_8a

    const/16 v19, -0x1

    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    move/from16 v0, v19

    invoke-interface {v3, v5, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_89
    const/4 v3, 0x3

    goto :goto_15

    :cond_8a
    const/16 v19, 0x1

    goto :goto_16

    :cond_8b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v3, :cond_8d

    if-nez v20, :cond_8d

    const/16 v3, 0xcc

    move/from16 v0, v32

    if-eq v0, v3, :cond_8c

    const/16 v3, 0x3e

    move/from16 v0, v32

    if-ne v0, v3, :cond_8d

    :cond_8c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_8d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_8e

    const-wide/16 v5, -0x1

    goto/16 :goto_1

    :cond_8e
    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :catch_7
    move-exception v3

    goto/16 :goto_f
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 25
    .param p1    # Landroid/view/KeyEvent;
    .param p2    # I
    .param p3    # Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    const/4 v15, 0x0

    :cond_0
    :goto_0
    return v15

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v9

    const/16 v21, 0x18

    move/from16 v0, v21

    if-ne v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const/4 v9, 0x1

    :cond_2
    :goto_2
    if-nez v9, :cond_6

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v9

    goto :goto_2

    :cond_5
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v9

    goto :goto_2

    :cond_6
    const/high16 v21, 0x1000000

    and-int v21, v21, p2

    if-eqz v21, :cond_8

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    const/4 v13, 0x0

    :goto_4
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v12, v0, :cond_c

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getLiveDemoEnabledAndHMTConnected()Z

    move-result v21

    if-eqz v21, :cond_7

    if-eqz v6, :cond_b

    const-string v21, "WindowManager"

    const-string v22, "mPowerLongPress is postdelayed 5"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x1388

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    :cond_9
    if-eqz p3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v13

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v13

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_c
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-eq v12, v0, :cond_d

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v12, v0, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    :cond_d
    or-int/lit8 p2, p2, 0x1

    :cond_e
    and-int/lit8 v21, p2, 0x3

    if-eqz v21, :cond_16

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_17

    if-eqz v6, :cond_f

    if-eqz p3, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    :cond_f
    :goto_7
    if-eqz p3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    :cond_10
    if-eqz v10, :cond_18

    if-nez v11, :cond_18

    :cond_11
    const/4 v15, 0x1

    :cond_12
    :goto_8
    const/16 v21, 0x11e

    move/from16 v0, v21

    if-ne v12, v0, :cond_14

    if-nez v6, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendVoiceWakeUpBroadcast()V

    :cond_13
    const/4 v15, 0x0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v21

    if-eqz v21, :cond_19

    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v12, v0, :cond_19

    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_15

    const-string v21, "WindowManager"

    const-string v22, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_0

    :cond_16
    const/4 v11, 0x0

    goto :goto_6

    :cond_17
    if-eqz v6, :cond_f

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_f

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_7

    :cond_18
    const/4 v15, 0x0

    if-eqz v6, :cond_12

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v21

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performCPUBoost()V

    or-int/lit8 v15, v15, 0x2

    goto/16 :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v21

    if-eqz v21, :cond_1b

    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_1a

    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "interceptKeyTq : Key was blocked by sidesync. keycode="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v21

    if-nez v21, :cond_0

    sparse-switch v12, :sswitch_data_0

    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_0

    const/16 v21, 0x124

    move/from16 v0, v21

    if-ne v12, v0, :cond_46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_0
    if-eqz v6, :cond_1e

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    if-eqz v17, :cond_1d

    :try_start_0
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_1d

    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    and-int/lit8 v15, v15, -0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBeforeKeyDown:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v7

    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v6, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleSamsungVolumeControl(IZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v12, v6, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    goto :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBeforeKeyDown:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v12, v0, :cond_1d

    and-int/lit8 v15, v15, -0x2

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBeforeKeyDown:I

    goto/16 :goto_9

    :sswitch_1
    and-int/lit8 v15, v15, -0x2

    if-eqz v6, :cond_22

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    const/4 v8, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsOffhookInEndCall:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRingingInEndCall:Z

    if-eqz v17, :cond_1f

    if-eqz p3, :cond_1f

    :try_start_1
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsOffhookInEndCall:Z

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRingingInEndCall:Z

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    :cond_1f
    :goto_a
    if-eqz p3, :cond_20

    if-eqz v8, :cond_21

    :cond_20
    const/16 v21, 0x1

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEndCallKeyRequested(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_1c

    or-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    :catch_1
    move-exception v7

    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_21
    const/16 v21, 0x0

    goto :goto_b

    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v21

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEndCallKeyRequested(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_23

    or-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGoHomeOnEndCallKey(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsOffhookInEndCall:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRingingInEndCall:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto/16 :goto_9

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v21

    if-nez v21, :cond_1c

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_1c

    and-int/lit8 v21, v15, -0x3

    or-int/lit8 v15, v21, 0x4

    goto/16 :goto_9

    :sswitch_2
    and-int/lit8 v15, v15, -0x2

    if-eqz v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, p3

    move-wide/from16 v2, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)V

    if-eqz p3, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v21, v0

    if-nez v21, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_26

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    :cond_26
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v19

    const-string v20, "com.amc.ui"

    if-eqz v17, :cond_27

    :try_start_2
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_33

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_27
    :goto_c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v21

    if-eqz v21, :cond_28

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    if-eqz v18, :cond_28

    :try_start_3
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_37

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_28
    :goto_d
    if-eqz p3, :cond_29

    if-nez v8, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v21

    if-eqz v21, :cond_39

    :cond_29
    const/16 v21, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_2b

    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_2a

    const-string v21, "WindowManager"

    const-string v22, "in interceptKeyBeforeQueueing() KEYCODE_POWER Down event isSideSyncPresentationRunning is true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    or-int/lit8 v15, v15, 0x1

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1a

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v21

    if-eqz v21, :cond_2c

    or-int/lit8 v15, v15, 0x1

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockPowerKey()Z

    move-result v21

    if-eqz v21, :cond_2d

    const-string v21, "WindowManager"

    const-string v22, "Power key is blockedd"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v15, v15, -0x5

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    move/from16 v21, v0

    if-nez v21, :cond_2e

    and-int/lit8 v21, v15, 0x1

    if-nez v21, :cond_2e

    const-string v21, "WindowManager"

    const-string v22, "call handleDoubleTapOnPower()"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v15, v15, -0x5

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnPower()V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    move/from16 v21, v0

    if-nez v21, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    move/from16 v21, v0

    if-eqz v21, :cond_30

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    move/from16 v21, v0

    if-nez v21, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v21

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_32

    const-string v21, "WindowManager"

    const-string v22, "LED on/off during cover closed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception v7

    const-string v21, "WindowManager"

    const-string v22, "CoverManager threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :cond_33
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_35

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-eqz v21, :cond_35

    if-nez p3, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_35

    :cond_34
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v8

    goto/16 :goto_c

    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_27

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v21

    if-nez v21, :cond_36

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v21

    if-eqz v21, :cond_27

    :cond_36
    invoke-interface/range {v19 .. v20}, Landroid/os/IVoIPInterface;->getVoIPCallCount(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_27

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v8

    goto/16 :goto_c

    :catch_3
    move-exception v7

    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    :cond_37
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_28

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-eqz v21, :cond_28

    if-nez p3, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_28

    :cond_38
    if-nez v8, :cond_28

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v8

    goto/16 :goto_d

    :catch_4
    move-exception v7

    const-string v21, "WindowManager"

    const-string v22, "ITelephony2 threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :cond_39
    const/16 v21, 0x0

    goto/16 :goto_e

    :cond_3a
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3b

    const-string v21, "WindowManager"

    const-string v22, "already power is consumed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    and-int/lit8 v15, v15, -0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3b
    if-nez v5, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_42

    :cond_3c
    const/16 v21, 0x1

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v21

    if-eqz v21, :cond_3d

    and-int/lit8 v21, v15, -0x3

    or-int/lit8 v15, v21, 0x4

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_3f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_3f

    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_3e

    const-string v21, "WindowManager"

    const-string v22, "in interceptKeyBeforeQueueing() KEYCODE_POWER up event isSideSyncPresentationRunning is true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    or-int/lit8 v15, v15, 0x1

    if-eqz p3, :cond_3f

    and-int/lit8 v15, v15, -0x5

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1a

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v21

    if-eqz v21, :cond_40

    or-int/lit8 v15, v15, 0x1

    and-int/lit8 v15, v15, -0x5

    :cond_40
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockPowerKey()Z

    move-result v21

    if-eqz v21, :cond_41

    const-string v21, "WindowManager"

    const-string v22, "Power key is blockedu"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v15, v15, -0x5

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v21

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    and-int/lit8 v21, v15, 0x1

    if-nez v21, :cond_1c

    const-string v21, "WindowManager"

    const-string v22, "in isDoubleTapOnPowerEnabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v15, v15, -0x5

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x1f4

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    :cond_42
    const/16 v21, 0x0

    goto/16 :goto_f

    :sswitch_3
    if-eqz v6, :cond_43

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    if-eqz v17, :cond_43

    :try_start_7
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v21

    if-eqz v21, :cond_1c

    :cond_43
    :goto_10
    :sswitch_4
    const/16 v21, 0x4f

    move/from16 v0, v21

    if-ne v12, v0, :cond_44

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v21

    if-eqz v21, :cond_44

    const-string v21, "WindowManager"

    const-string v22, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_5
    move-exception v7

    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_44
    :sswitch_5
    and-int/lit8 v21, v15, 0x1

    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    new-instance v23, Landroid/view/KeyEvent;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    :sswitch_6
    if-eqz v6, :cond_1c

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    if-eqz v17, :cond_1c

    :try_start_8
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_1c

    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_9

    :catch_6
    move-exception v7

    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :sswitch_7
    and-int/lit8 v15, v15, -0x2

    if-nez v6, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleQuickshotEvent(I)Z

    move-result v21

    if-eqz v21, :cond_1c

    or-int/lit8 v15, v15, 0x2

    goto/16 :goto_9

    :sswitch_8
    const/16 v21, 0x240

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    if-eqz v6, :cond_1c

    const-string v21, "FakeShutdown"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!@unknown : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :sswitch_9
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_45

    const-string v21, "WindowManager"

    const-string v22, "Watch keyevent"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    if-eqz v6, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_1c

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchPremiumWatch()V

    goto/16 :goto_9

    :cond_46
    and-int/lit8 v21, v15, 0x2

    if-nez v21, :cond_47

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v12, v0, :cond_0

    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v21

    if-eqz v21, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x4f -> :sswitch_4
        0x55 -> :sswitch_3
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_0
        0xde -> :sswitch_5
        0x110 -> :sswitch_9
        0x122 -> :sswitch_7
        0x123 -> :sswitch_7
    .end sparse-switch
.end method

.method public interceptKeyBeforeQuickAccess(IFF)V
    .locals 1
    .param p1    # I
    .param p2    # F
    .param p3    # F

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleQuickAccess(IFF)V

    return-void
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 3
    .param p1    # I

    const/4 v1, 0x0

    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x2

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is2ndScreenWaked()Z
    .locals 2

    const-string v0, "debug.cocktail.wakeup_nofreeze"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowAllRotation()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCocktailBarShifting()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShifting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BarController;->isImplicitTransientShiftShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoverOpen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGloveModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGloveModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isKeyguardHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isKeyguardHidden()Z

    move-result v0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method isMusicActive()Z
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isLocalOrRemoteMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isNavigationBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq v0, v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isShowingLockScreenWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    return v0
.end method

.method public isStatusBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1    # I

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_0

    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVoIPRinging()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v3, "WindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "WindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 6

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    return-void
.end method

.method public keyguardOn()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "WindowManager"

    const-string v2, "Key was blocked by keyguard or interaction control"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->switchDefaultCocktail()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string v2, "launchHomeFromHotKey in premium watch displayed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "WindowManager"

    const-string v2, "Key was pending by verify unlock keyguard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchHomeDuringVzwSetup()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "WindowManager"

    const-string v2, " VerizonSetupWizard is running, launching home ignore keyguard ..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v1, "homekey"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    :cond_6
    sget v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "WindowManager"

    const-string v2, "Key was blocked by user setup is not completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string v1, "homekey"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 55
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;
    .param p3    # Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v41

    if-eqz v41, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    const/16 v45, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    const/16 v44, 0x1

    :goto_2
    if-eqz v45, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_2
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v50, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v52

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    const/16 v3, 0x800

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v46

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/16 v54, 0x1

    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    const/16 v32, 0x1

    :goto_4
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v17, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v18, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v19, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_7

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_3
    const/16 v45, 0x0

    goto :goto_1

    :cond_4
    const/16 v44, 0x0

    goto :goto_2

    :cond_5
    const/16 v54, 0x0

    goto :goto_3

    :cond_6
    const/16 v32, 0x0

    goto :goto_4

    :cond_7
    if-eqz v41, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v37, 0x1

    :goto_5
    move/from16 v0, v50

    and-int/lit16 v13, v0, 0xf0

    if-nez v41, :cond_1f

    if-eqz p3, :cond_1e

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_8
    :goto_6
    const/16 v3, 0x800

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p3, :cond_9

    if-eqz v32, :cond_58

    :cond_9
    move-object/from16 v23, p1

    :goto_7
    move-object/from16 v22, p0

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v29, v9

    invoke-direct/range {v22 .. v29}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v3, :cond_b

    if-nez p3, :cond_59

    move-object/from16 v23, p1

    :goto_8
    move-object/from16 v22, p0

    move-object/from16 v24, p2

    move-object/from16 v25, v21

    move-object/from16 v26, v16

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    move-object/from16 v30, v20

    move-object/from16 v31, v9

    invoke-virtual/range {v22 .. v31}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyAlphaScreenPolicyFrames(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_b
    and-int/lit16 v3, v12, 0x200

    if-eqz v3, :cond_c

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7da

    if-eq v3, v4, :cond_c

    const/16 v3, -0x2710

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    const/16 v3, 0x2710

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_c
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_1a

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-nez v3, :cond_72

    if-eqz v46, :cond_e

    if-eqz v54, :cond_e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_72

    :cond_e
    if-nez v32, :cond_72

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    :cond_f
    const/16 v3, 0x1000

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v3, v4, :cond_5a

    const/16 v43, 0x1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_6b

    if-nez p3, :cond_6b

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v36

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v34

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v48

    move/from16 v49, v34

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v36

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v34

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v4, v36

    div-int/lit8 v4, v4, 0x2

    add-int v35, v3, v4

    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, v33

    if-gt v0, v3, :cond_12

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_68

    :cond_12
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_13

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_13
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v38, v3, v4

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v51

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_5c

    if-eqz v43, :cond_5c

    if-nez v54, :cond_5c

    move-object/from16 v0, v51

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-ne v3, v4, :cond_5c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move/from16 v0, v34

    if-ge v0, v3, :cond_5c

    move-object/from16 v0, v51

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_14

    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_14
    sub-int v3, v38, v34

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v51 .. v51}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    if-ge v3, v4, :cond_5b

    move/from16 v0, v35

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int v3, v35, v36

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :goto_a
    const/16 v3, 0x10

    if-eq v13, v3, :cond_15

    const/16 v3, 0x20

    if-ne v13, v3, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_16
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_b
    const/16 v3, 0x30

    if-eq v13, v3, :cond_67

    if-nez v46, :cond_67

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_17
    :goto_c
    if-eqz p3, :cond_1a

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_18

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_18

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_1a

    :cond_18
    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_19

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_1a

    :cond_19
    const v3, 0x10500

    and-int/2addr v3, v12

    const v4, 0x10100

    if-ne v3, v4, :cond_71

    and-int/lit8 v3, v52, 0x4

    if-nez v3, :cond_71

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_1a
    :goto_d
    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-interface/range {v3 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb6

    if-ne v3, v4, :cond_1c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_1c

    :cond_1b
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_1c
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x480000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    goto/16 :goto_0

    :cond_1d
    const/16 v37, 0x0

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v37, :cond_20

    const/high16 v3, 0x8000000

    and-int/2addr v3, v12

    if-nez v3, :cond_20

    and-int/lit8 v3, v52, 0x2

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v3, 0x50

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_e

    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_25

    const/16 v39, 0x1

    :goto_f
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_26

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_26

    const/16 v40, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_27

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_27

    const/16 v53, 0x1

    :goto_11
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v3, :cond_28

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v3, :cond_28

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    const/16 v42, 0x1

    :goto_12
    if-eqz v40, :cond_23

    if-nez v39, :cond_23

    if-eqz v42, :cond_23

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-nez v3, :cond_22

    and-int/lit8 v3, v52, 0x4

    if-nez v3, :cond_29

    and-int/lit16 v3, v12, 0x400

    if-nez v3, :cond_29

    const/high16 v3, 0x4000000

    and-int/2addr v3, v12

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    :cond_22
    :goto_13
    const/high16 v3, 0x8000000

    and-int/2addr v3, v12

    if-nez v3, :cond_23

    and-int/lit8 v3, v52, 0x2

    if-nez v3, :cond_23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    :cond_23
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    :cond_24
    const v3, 0x10100

    and-int/2addr v3, v12

    const v4, 0x10100

    if-ne v3, v4, :cond_3b

    if-eqz p3, :cond_2a

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_6

    :cond_25
    const/16 v39, 0x0

    goto/16 :goto_f

    :cond_26
    const/16 v40, 0x0

    goto/16 :goto_10

    :cond_27
    const/16 v53, 0x0

    goto/16 :goto_11

    :cond_28
    const/16 v42, 0x0

    goto/16 :goto_12

    :cond_29
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    goto :goto_13

    :cond_2a
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_2b

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-eq v3, v4, :cond_2b

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_31

    :cond_2b
    if-eqz v37, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_14
    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    if-eqz v37, :cond_2f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_15
    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    if-eqz v37, :cond_30

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_16
    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_17
    and-int/lit16 v3, v12, 0x400

    if-nez v3, :cond_38

    const/16 v3, 0x10

    if-eq v13, v3, :cond_37

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2c
    :goto_18
    if-eqz v21, :cond_2d

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    :cond_2d
    const/16 v3, 0x30

    if-eq v13, v3, :cond_3a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_2e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_14

    :cond_2f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto/16 :goto_15

    :cond_30
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto/16 :goto_16

    :cond_31
    const/high16 v3, 0x2000000

    and-int/2addr v3, v12

    if-eqz v3, :cond_32

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_32

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_17

    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_34

    move/from16 v0, v52

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_34

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-eq v3, v4, :cond_33

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_34

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_17

    :cond_34
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v3, :cond_35

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v3, v4, :cond_35

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_17

    :cond_35
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-ne v3, v4, :cond_36

    and-int/lit8 v3, v52, 0x2

    if-eqz v3, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_17

    :cond_36
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_19

    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_18

    :cond_38
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_2c

    const/16 v3, 0x10

    if-eq v13, v3, :cond_39

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_18

    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_18

    :cond_3a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_3b
    and-int/lit16 v3, v12, 0x100

    if-nez v3, :cond_3c

    move/from16 v0, v52

    and-int/lit16 v3, v0, 0x600

    if-eqz v3, :cond_4e

    :cond_3c
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_3d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-eq v3, v4, :cond_3d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_42

    :cond_3d
    if-eqz v37, :cond_3f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_1a
    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    if-eqz v37, :cond_40

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_1b
    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    if-eqz v37, :cond_41

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_1c
    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1d
    if-eqz v21, :cond_3e

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3e

    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    :cond_3e
    const/16 v3, 0x30

    if-eq v13, v3, :cond_4d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_3f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_1a

    :cond_40
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto :goto_1b

    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto :goto_1c

    :cond_42
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e3

    if-eq v3, v4, :cond_43

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e8

    if-ne v3, v4, :cond_44

    :cond_43
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1d

    :cond_44
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7df

    if-eq v3, v4, :cond_45

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-ne v3, v4, :cond_46

    :cond_45
    and-int/lit16 v3, v12, 0x400

    if-eqz v3, :cond_46

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1d

    :cond_46
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-eq v3, v4, :cond_47

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e9

    if-ne v3, v4, :cond_48

    :cond_47
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1d

    :cond_48
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_49

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1d

    :cond_49
    const/high16 v3, 0x2000000

    and-int/2addr v3, v12

    if-eqz v3, :cond_4a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1d

    :cond_4a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_4c

    move/from16 v0, v52

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_4c

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d5

    if-eq v3, v4, :cond_4b

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4c

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4c

    :cond_4b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1d

    :cond_4c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1d

    :cond_4d
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_4e
    if-eqz p3, :cond_4f

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v3, :cond_8

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_4f
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_50

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_51

    :cond_50
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_51
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d5

    if-eq v3, v4, :cond_52

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d3

    if-eq v3, v4, :cond_52

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e4

    if-ne v3, v4, :cond_54

    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_53

    if-nez v44, :cond_53

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_53
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_54
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    if-eqz v54, :cond_55

    const/4 v3, 0x0

    :goto_1e
    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v3, 0x10

    if-eq v13, v3, :cond_56

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1f
    const/16 v3, 0x30

    if-eq v13, v3, :cond_57

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6

    :cond_55
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    goto/16 :goto_1e

    :cond_56
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1f

    :cond_57
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_58
    move-object/from16 v23, p3

    goto/16 :goto_7

    :cond_59
    move-object/from16 v23, p3

    goto/16 :goto_8

    :cond_5a
    const/16 v43, 0x0

    goto/16 :goto_9

    :cond_5b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_a

    :cond_5c
    if-eqz v46, :cond_5d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    add-int v34, v49, v3

    :cond_5d
    move/from16 v0, v34

    move/from16 v1, v38

    if-ge v0, v1, :cond_60

    if-eqz v46, :cond_5e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    sub-int v4, v4, v49

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    int-to-float v5, v5

    move-object/from16 v0, v48

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000

    add-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_20
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_b

    :cond_5e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5f

    move-object/from16 v0, v51

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v51

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v51 .. v51}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_20

    :cond_5f
    move/from16 v0, v35

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    add-int v3, v35, v36

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_20

    :cond_60
    if-eqz v46, :cond_61

    if-eqz v54, :cond_61

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    sub-int v4, v38, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move-object/from16 v0, v48

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000

    mul-float/2addr v4, v5

    move-object/from16 v0, v48

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v48

    iget v5, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x40000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_b

    :cond_61
    if-eqz v54, :cond_64

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    :goto_21
    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v35

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v36

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v3, :cond_65

    move/from16 v0, v52

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_65

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_65

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_65

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_22
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_62

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_62
    const/16 v3, 0x10

    if-eq v13, v3, :cond_63

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_63
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_66

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x40000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_b

    :cond_64
    const/4 v3, 0x0

    goto/16 :goto_21

    :cond_65
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_22

    :cond_66
    const/high16 v3, 0x40000000

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_b

    :cond_67
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_c

    :cond_68
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-le v3, v4, :cond_6a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :cond_69
    :goto_23
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v35

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v36

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    const/16 v3, 0x10

    if-eq v13, v3, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_c

    :cond_6a
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_69

    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_23

    :cond_6b
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_c

    :cond_6c
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_6d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_6d
    if-eqz v21, :cond_17

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v43, :cond_17

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-ge v3, v4, :cond_6e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_6e
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-ge v3, v4, :cond_6f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_6f
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-ge v3, v4, :cond_70

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_70
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-ge v3, v4, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_c

    :cond_71
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_d

    :cond_72
    if-eqz v54, :cond_1a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz p3, :cond_73

    and-int/lit16 v3, v12, 0x100

    if-nez v3, :cond_73

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1a

    :cond_73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v47, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_76

    const/4 v3, 0x2

    move/from16 v0, v47

    if-ne v0, v3, :cond_76

    if-nez p3, :cond_76

    const/high16 v3, 0x400000

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_76

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_75

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFocused()Z

    move-result v3

    if-nez v3, :cond_74

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAttachedWindowFocused()Z

    move-result v3

    if-nez v3, :cond_74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAttachedTo(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_75

    :cond_74
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v4

    if-ne v3, v4, :cond_1a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v38, v3, v4

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v0, v38

    if-ge v3, v0, :cond_77

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v38, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_d

    :cond_76
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_24

    :cond_77
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_d
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 7
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;
    .param p3    # Landroid/view/WindowManager$LayoutParams;
    .param p4    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p5    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz p2, :cond_3

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ed

    if-ne v4, v5, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    if-eqz p2, :cond_5

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v3, :cond_5

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-nez v4, :cond_5

    invoke-virtual {p4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p5, :cond_5

    invoke-virtual {p5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCascade:Z

    move v2, v3

    goto :goto_0

    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCascade:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCascade:Z

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_a
    if-eqz v0, :cond_2

    const/high16 v1, 0x480000

    if-eqz p2, :cond_b

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_2

    :cond_b
    if-eqz p3, :cond_c

    iget v4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_2

    :cond_c
    move v2, v3

    goto :goto_0

    :cond_d
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    if-nez v4, :cond_a

    goto :goto_0
.end method

.method public needHideTrayBar()Z
    .locals 14

    const/16 v13, 0x1000

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/high16 v12, 0x100000

    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v11, :cond_0

    move-object v4, v8

    :goto_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v11, :cond_1

    move-object v5, v8

    :goto_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v11, :cond_2

    move-object v6, v8

    :goto_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v11, :cond_3

    move-object v7, v8

    :goto_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_4
    return v8

    :cond_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    goto :goto_3

    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    move-object v3, v2

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_5

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v8, :cond_6

    move v8, v9

    goto :goto_4

    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v8

    if-nez v8, :cond_7

    move v8, v9

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_8

    move v8, v9

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_9

    move v8, v9

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    if-eqz v7, :cond_c

    invoke-virtual {v7, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_b
    move v8, v9

    goto :goto_4

    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v8

    if-nez v8, :cond_e

    if-eqz v4, :cond_d

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_d

    move v8, v9

    goto/16 :goto_4

    :cond_d
    if-eqz v5, :cond_e

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_e

    move v8, v9

    goto/16 :goto_4

    :cond_e
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_f
    move v8, v9

    goto/16 :goto_4

    :cond_10
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v8, :cond_12

    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKnoxActivated:Z

    if-eqz v8, :cond_12

    sget-boolean v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    if-eqz v8, :cond_12

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_11

    const-string v8, "WindowManager"

    const-string v10, "MultiWindow is disabled. Container Only Mode state"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    goto/16 :goto_4

    :cond_11
    sput-boolean v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    :cond_12
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_13

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_13

    move v8, v9

    goto/16 :goto_4

    :cond_13
    move v8, v10

    goto/16 :goto_4
.end method

.method needSensorRunningLp()Z
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v1, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v4, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v1, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_1

    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v1, :cond_8

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v1, :cond_1

    :cond_8
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v1, :cond_a

    const-string v1, "persist.sys.screen.rotation.Off"

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v0, "persist.sys.screen.rotation.Off"

    const-string v2, "-1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .locals 1
    .param p1    # J
    .param p3    # Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyGloveSwitchChanged(JZ)V

    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .param p1    # J
    .param p3    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChangedForFolder(JZ)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 1
    .param p1    # J
    .param p3    # Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    goto :goto_0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # I
    .param p3    # Z

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_3

    move v0, v5

    :goto_1
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    const/4 v3, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    :goto_3
    array-length v6, v3

    if-ne v6, v5, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v7, v3, v4

    invoke-virtual {v6, v2, v1, v7, v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;J)V

    :goto_4
    move v4, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    goto :goto_2

    :sswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    goto :goto_2

    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v1, v3, v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x7

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x899

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_4

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_8
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_9
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_0

    :cond_4
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_5
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x89a

    if-ne v0, v1, :cond_5

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_5
        0x7de -> :sswitch_3
        0x7e1 -> :sswitch_4
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_6
        0x832 -> :sswitch_7
        0x898 -> :sswitch_8
        0x89b -> :sswitch_9
        0x8ac -> :sswitch_a
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    return-void
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->removeAdaptiveEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->removeContextualEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_4

    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_5

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_6

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_9

    const-string v0, "WindowManager"

    const-string v1, "Removing SViewCover window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public requestTransientBars()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    :cond_0
    return-void
.end method

.method public requestTransientBars(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    :cond_0
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .locals 9
    .param p1    # I
    .param p2    # I

    const/4 v8, 0x4

    const/4 v0, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v3, 0x1

    const-string v4, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotationForOrientationLw(orient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", last="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "); user="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_0

    const-string v2, "USER_ROTATION_LOCKED"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " sensorRotation="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mLidState="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mDockMode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mHdmiPlugged="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mAccelerometerDefault="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " gripRotationLock="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGripRotationLocked()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    if-gez v1, :cond_2

    move v1, p2

    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1110020

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    :cond_3
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    if-ltz v2, :cond_5

    const-string v2, "WindowManager"

    const-string v3, "prefer rotation is set by cover"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    :goto_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-ltz v0, :cond_30

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v2, v3, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->rotationForSecondLcdOrientationLw(II)I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v2, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardHidden()Z

    move-result v2

    if-nez v2, :cond_a

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableLockScreenRotations:I

    if-ne v2, v3, :cond_9

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_8

    move v0, p2

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_2

    :cond_a
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_d

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_d

    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_c

    move v0, v1

    :goto_3
    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_3

    :cond_d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-nez v2, :cond_11

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v3, :cond_e

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_e

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v8, :cond_11

    :cond_e
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_11

    :cond_f
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_10

    move v0, v1

    :goto_4
    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_4

    :cond_11
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v7, :cond_14

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-nez v2, :cond_12

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    if-ltz v2, :cond_14

    :cond_12
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-eqz v2, :cond_13

    move v0, v1

    :goto_5
    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    goto :goto_5

    :cond_14
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v2, :cond_16

    :cond_15
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v2, v3, :cond_16

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-eqz v2, :cond_16

    const-string v2, "service.camera.running"

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Dock Orientation Enabled :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "preferredRotation is ::"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_16
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_17

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v2, :cond_17

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    goto/16 :goto_2

    :cond_17
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUvsOrientationRequested()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz p1, :cond_18

    const/16 v2, 0x8

    if-eq p1, v2, :cond_18

    const/4 v2, 0x6

    if-ne p1, v2, :cond_19

    :cond_18
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    goto/16 :goto_2

    :cond_19
    if-eq p1, v3, :cond_1a

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1a

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1b

    :cond_1a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    goto/16 :goto_2

    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getUvsOrientation()I

    move-result v0

    move p1, v0

    goto/16 :goto_2

    :cond_1c
    const/16 v2, 0xe

    if-eq p1, v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGripRotationLocked()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    move v0, p2

    goto/16 :goto_2

    :cond_1e
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v2, :cond_1f

    if-eq p1, v6, :cond_20

    const/4 v2, -0x1

    if-eq p1, v2, :cond_20

    const/16 v2, 0xb

    if-eq p1, v2, :cond_20

    const/16 v2, 0xc

    if-eq p1, v2, :cond_20

    const/16 v2, 0xd

    if-eq p1, v2, :cond_20

    :cond_1f
    if-eq p1, v8, :cond_20

    if-eq p1, v7, :cond_20

    const/4 v2, 0x6

    if-eq p1, v2, :cond_20

    const/4 v2, 0x7

    if-ne p1, v2, :cond_23

    :cond_20
    if-ne v1, v6, :cond_21

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v2, v3, :cond_21

    if-eq p1, v7, :cond_21

    const/16 v2, 0xd

    if-ne p1, v2, :cond_22

    :cond_21
    move v0, v1

    goto/16 :goto_2

    :cond_22
    move v0, p2

    goto/16 :goto_2

    :cond_23
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_24

    const/4 v2, 0x5

    if-eq p1, v2, :cond_24

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    const-string v2, "persist.sys.screen.rotation.Off"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_24
    const-string v2, "persist.sys.screen.rotation.Off"

    const-string v5, "-1"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-ne v2, v3, :cond_27

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    goto/16 :goto_2

    :sswitch_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_25

    move v0, v1

    goto/16 :goto_2

    :cond_25
    const/4 v0, -0x1

    goto/16 :goto_2

    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_26

    move v0, v1

    goto/16 :goto_2

    :cond_26
    const/4 v0, -0x1

    goto/16 :goto_2

    :cond_27
    const/4 v0, -0x1

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_28

    monitor-exit v4

    goto/16 :goto_1

    :cond_28
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v4

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_29

    monitor-exit v4

    goto/16 :goto_1

    :cond_29
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v4

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    monitor-exit v4

    goto/16 :goto_1

    :cond_2a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v4

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    monitor-exit v4

    goto/16 :goto_1

    :cond_2b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v4

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    monitor-exit v4

    goto/16 :goto_1

    :cond_2c
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    monitor-exit v4

    move v0, p2

    goto/16 :goto_1

    :cond_2d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v4

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    monitor-exit v4

    goto/16 :goto_1

    :cond_2e
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    monitor-exit v4

    move v0, p2

    goto/16 :goto_1

    :cond_2f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v4

    goto/16 :goto_1

    :cond_30
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .param p1    # I
    .param p2    # I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    const v0, 0x11170

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceUserActivityTimeoutWin:Landroid/view/WindowManagerPolicy$WindowState;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onScreenTurnedOff(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->disableHideSViewCoverOnce(Z)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$35;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$35;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWatchDisplayed:Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2ndScreenWakeup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    const/4 v1, 0x1

    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->is2ndScreenWaked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForCocktail(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 8
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # I

    const v1, 0x10a0040

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq p2, v4, :cond_0

    if-ne p2, v5, :cond_2

    :cond_0
    const/4 v1, -0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_6

    if-eq p2, v5, :cond_3

    if-ne p2, v7, :cond_4

    :cond_3
    const v1, 0x10a0047

    goto :goto_0

    :cond_4
    if-eq p2, v4, :cond_5

    if-ne p2, v6, :cond_9

    :cond_5
    const v1, 0x10a0046

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_f

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_b

    if-eq p2, v5, :cond_7

    if-ne p2, v7, :cond_8

    :cond_7
    const v1, 0x10a0041

    goto :goto_0

    :cond_8
    if-eq p2, v4, :cond_1

    if-eq p2, v6, :cond_1

    :cond_9
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x82f

    if-ne v2, v3, :cond_1e

    if-eq p2, v5, :cond_a

    if-ne p2, v7, :cond_1c

    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRecentMultiWindowUI:Z

    if-eqz v1, :cond_1b

    const v1, 0x10a0001

    goto :goto_0

    :cond_b
    if-eq p2, v5, :cond_c

    if-ne p2, v7, :cond_d

    :cond_c
    const v1, 0x10a0045

    goto :goto_0

    :cond_d
    if-eq p2, v4, :cond_e

    if-ne p2, v6, :cond_9

    :cond_e
    const v1, 0x10a0044

    goto :goto_0

    :cond_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_9

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v2, :pswitch_data_0

    if-eq p2, v5, :cond_10

    if-ne p2, v7, :cond_19

    :cond_10
    const v1, 0x10a0045

    goto :goto_0

    :pswitch_0
    if-eq p2, v5, :cond_11

    if-ne p2, v7, :cond_12

    :cond_11
    const v1, 0x10a0047

    goto :goto_0

    :cond_12
    if-eq p2, v4, :cond_13

    if-ne p2, v6, :cond_9

    :cond_13
    const v1, 0x10a0046

    goto :goto_0

    :pswitch_1
    if-eq p2, v5, :cond_14

    if-ne p2, v7, :cond_15

    :cond_14
    const v1, 0x10a0043

    goto :goto_0

    :cond_15
    if-eq p2, v4, :cond_16

    if-ne p2, v6, :cond_9

    :cond_16
    const v1, 0x10a0042

    goto :goto_0

    :pswitch_2
    if-eq p2, v5, :cond_17

    if-ne p2, v7, :cond_18

    :cond_17
    const v1, 0x10a0041

    goto/16 :goto_0

    :cond_18
    if-eq p2, v4, :cond_1

    if-ne p2, v6, :cond_9

    goto/16 :goto_0

    :cond_19
    if-eq p2, v4, :cond_1a

    if-ne p2, v6, :cond_9

    :cond_1a
    const v1, 0x10a0044

    goto/16 :goto_0

    :cond_1b
    const v1, 0x10a0041

    goto/16 :goto_0

    :cond_1c
    if-eq p2, v4, :cond_1d

    if-ne p2, v6, :cond_1e

    :cond_1d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRecentMultiWindowUI:Z

    if-eqz v2, :cond_1

    const/high16 v1, 0x10a0000

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_20

    const v1, 0x10a0035

    goto/16 :goto_0

    :cond_1f
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e7

    if-ne v1, v2, :cond_20

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v1, :cond_20

    if-ne p2, v4, :cond_20

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public selectRotationAnimationLw([I)V
    .locals 5
    .param p1    # [I

    const v4, 0x10a0082

    const v3, 0x10a0081

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_0

    aput v1, p1, v2

    aput v1, p1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHideBySViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    aput v4, p1, v1

    aput v3, p1, v2

    :cond_0
    return-void

    :pswitch_0
    const v0, 0x10a0083

    aput v0, p1, v1

    aput v3, p1, v2

    goto :goto_0

    :pswitch_1
    aput v4, p1, v1

    aput v3, p1, v2

    goto :goto_0

    :cond_1
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5    # Z
    .param p6    # Landroid/graphics/Rect;
    .param p7    # Landroid/graphics/Rect;
    .param p8    # Landroid/graphics/Rect;
    .param p9    # Landroid/graphics/Rect;
    .param p10    # Landroid/graphics/Rect;
    .param p11    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_0
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_c

    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_c

    invoke-virtual {p11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_c

    :cond_1
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v0, -0x2710

    iput v0, p7, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    const/16 v0, 0x2710

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v0, 0x10

    if-eq p3, v0, :cond_7

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    :goto_2
    if-eqz p5, :cond_b

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p5, :cond_5

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    :cond_5
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    :cond_6
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_7
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_4

    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    :cond_8
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    :cond_9
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    :cond_a
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_b
    move-object v0, p9

    goto :goto_3

    :cond_c
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x899

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    :cond_d
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_e

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_e
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1    # Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setBendedPendingIntent(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public setCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/cover/CoverState;

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v2, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeupCocktailBar:Z

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCoverSwitchState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->dismissCoverUIOnNextActivity()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->disableHideSViewCoverOnce(Z)V

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-static {p1}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setCurrentAppOrientation(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1
    .param p1    # Landroid/view/Display;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 17
    .param p1    # Landroid/view/Display;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    const-string v8, "persist.panel.orientation"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    div-int/lit8 v8, v8, 0x5a

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    move/from16 v6, p3

    move/from16 v2, p2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v8, 0x1110021

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    :goto_1
    const v8, 0x105000c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    const v9, 0x1050147

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    const v8, 0x1050146

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    const v8, 0x1050159

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScaleWindowResizableSize:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    const v12, 0x105000d

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v12, 0x105000e

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v16, 0x105000f

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    aput v16, v14, v15

    aput v16, v12, v13

    aput v16, v10, v11

    aput v16, v8, v9

    mul-int/lit16 v8, v6, 0xa0

    div-int v7, v8, p4

    mul-int/lit16 v8, v2, 0xa0

    div-int v3, v8, p4

    const/16 v8, 0x258

    if-ge v7, v8, :cond_6

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    const v8, 0x1110048

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    :cond_2
    :goto_3
    const-string v8, "portrait"

    const-string v9, "persist.demo.hdmirotation"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    :goto_4
    const-string v8, "persist.demo.hdmirotationlock"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    const/16 v8, 0x3c0

    if-lt v3, v8, :cond_9

    const/16 v8, 0x2d0

    if-lt v7, v8, :cond_9

    const v8, 0x1110064

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "true"

    const-string v9, "config.override_forced_orient"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    const-string v8, "latte"

    const-string v9, "ro.build.scafe"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTabletUXConcept:Z

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_1

    :cond_4
    move/from16 v6, p2

    move/from16 v2, p3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    const v8, 0x1110021

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_7
    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_4

    :cond_9
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2    # Landroid/view/WindowManagerPolicy$WindowState;

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    return-void
.end method

.method public setRotationLw(I)V
    .locals 6
    .param p1    # I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setRotationLw(I)V

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void

    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setSpecialKeysFilter(Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTouchExplorationEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v1, v3, :cond_1

    if-ne p1, v3, :cond_0

    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v1, "accelerometer_rotation_second"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "accelerometer_rotation_second"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_2
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$42;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$42;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 5

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method startDockOrHome()V
    .locals 8

    const-string v5, "WindowManager"

    const-string v6, "startDockOrHome"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "2.0"

    const-string v6, "version"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/PersonaManager;->handleHomeShow()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "WindowManager"

    const-string v6, "home showing interrupted by persona manager"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.sec.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.sec.android.app.SmartClipService"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDockHomeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->switchDefaultCocktail()V

    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_1

    :try_start_1
    const-string v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    const-string v2, "WindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->refreshKnoxInfo()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$41;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$41;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggleMultiWindowTray()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHideTrayBar()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "WindowManager"

    const-string v3, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-nez v2, :cond_2

    const-string v2, "WindowManager"

    const-string v3, "Multi window feature : off"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public updateMultiWindowTrayBar(ZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$45;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$45;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateOrientationListenerLp()V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(Z)V
    .locals 2
    .param p1    # Z

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v15, 0x0

    const-string v18, "multi_window_enabled"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRecentMultiWindowUI:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateSetting mEnableMultiWindowUISetting = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " enableMultiWindowUISetting = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v18, v0

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v20, "multi_window_flashbar_shown"

    const/16 v21, -0x1

    const/16 v22, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_f

    const/16 v18, 0x0

    :goto_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(ZZ)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    :cond_2
    const-string v18, "end_button_behavior"

    const/16 v20, 0x2

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    const-string v18, "incall_power_button_behavior"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    const-string v18, "user_rotation"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    const/4 v15, 0x1

    :cond_3
    const-string v18, "accelerometer_rotation"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_11

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v18, "accelerometer_rotation_second"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_12

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v14, :cond_5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const-string v18, "pointer_location"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v12, :cond_6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    if-eqz v12, :cond_13

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v20, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSideKeyPanelFeature(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "sidesoftkey_switch"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSideKeyPanelEnabled:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v5, :cond_8

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSideKeyPanelEnabled:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    if-eqz v5, :cond_14

    const/16 v18, 0x9

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    const-string v18, "screen_off_timeout"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    const-string v18, "default_input_method"

    const/16 v20, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_15

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v6, :cond_9

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    const/4 v15, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->loadSetting()V

    :cond_a
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v18

    if-eqz v18, :cond_c

    const-string v18, "any_screen_enabled"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_16

    const/16 v18, 0x1

    :goto_7
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->setEasyOneHandEnabled(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v8, :cond_b

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v20, 0x15

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    const-string v18, "any_screen_running"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_17

    const/16 v18, 0x1

    :goto_8
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->setEasyOneHandRunning(Z)V

    :cond_c
    const-string v18, "kids_home_mode"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    const/4 v10, 0x1

    :goto_9
    const-string v18, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateSetting mIsKidsLauncherEnabled = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " isKidsLauncherEnabled = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v10, :cond_d

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_e

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    :cond_e
    return-void

    :cond_f
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v4, :cond_1

    const/16 v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(ZZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v20, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    :cond_11
    const/16 v17, 0x1

    goto/16 :goto_2

    :cond_12
    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_13
    const/16 v18, 0x2

    goto/16 :goto_4

    :cond_14
    const/16 v18, 0xa

    goto/16 :goto_5

    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_8

    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_9
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateTopActivity(Landroid/content/ComponentName;)V

    return-void
.end method

.method public userActivity()V
    .locals 5

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    if-eqz p3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->selectRotationAnimationLw([I)V

    aget v3, v0, v2

    if-ne p1, v3, :cond_2

    aget v3, v0, v1

    if-eq p2, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10a0082
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .locals 6
    .param p1    # I

    const/4 v2, 0x1

    const/16 v4, 0x19

    const/4 v1, 0x5

    const/16 v3, 0x14

    const/4 v0, 0x2

    if-lt p1, v2, :cond_0

    const/16 v5, 0x63

    if-gt p1, v5, :cond_0

    :goto_0
    :sswitch_0
    return v0

    :cond_0
    const/16 v5, 0x899

    if-ne p1, v5, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v5, 0x89a

    if-eq p1, v5, :cond_2

    const/16 v5, 0x89b

    if-ne p1, v5, :cond_3

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    sparse-switch p1, :sswitch_data_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    move v0, v2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    move v0, v3

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_f
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_10
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_13
    move v0, v3

    goto :goto_0

    :sswitch_14
    move v0, v3

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_17
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_18
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_19
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_1a
    move v0, v4

    goto :goto_0

    :sswitch_1b
    move v0, v4

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0x1a

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0x1b

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0x1c

    goto :goto_0

    :sswitch_1f
    const/16 v0, 0x1a

    goto :goto_0

    :sswitch_20
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_21
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_22
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_24
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_25
    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_26
    move v0, v1

    goto/16 :goto_0

    :sswitch_27
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_29
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_2a
    move v0, v3

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_2c
    move v0, v4

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_11
        0x7d1 -> :sswitch_3
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_8
        0x7d4 -> :sswitch_c
        0x7d5 -> :sswitch_5
        0x7d6 -> :sswitch_14
        0x7d7 -> :sswitch_6
        0x7d8 -> :sswitch_4
        0x7d9 -> :sswitch_d
        0x7da -> :sswitch_17
        0x7db -> :sswitch_9
        0x7dc -> :sswitch_a
        0x7dd -> :sswitch_0
        0x7de -> :sswitch_12
        0x7df -> :sswitch_1d
        0x7e0 -> :sswitch_1c
        0x7e1 -> :sswitch_10
        0x7e2 -> :sswitch_23
        0x7e3 -> :sswitch_15
        0x7e4 -> :sswitch_13
        0x7e5 -> :sswitch_1e
        0x7e6 -> :sswitch_24
        0x7e7 -> :sswitch_7
        0x7e8 -> :sswitch_16
        0x7e9 -> :sswitch_1
        0x7ea -> :sswitch_1b
        0x7eb -> :sswitch_18
        0x7ec -> :sswitch_4
        0x7ed -> :sswitch_b
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_20
        0x7f0 -> :sswitch_21
        0x7f1 -> :sswitch_22
        0x7f2 -> :sswitch_1f
        0x82f -> :sswitch_b
        0x830 -> :sswitch_12
        0x831 -> :sswitch_17
        0x832 -> :sswitch_e
        0x833 -> :sswitch_f
        0x834 -> :sswitch_25
        0x835 -> :sswitch_26
        0x836 -> :sswitch_27
        0x837 -> :sswitch_28
        0x8ac -> :sswitch_1a
        0x8ad -> :sswitch_19
        0x8ae -> :sswitch_1a
        0x8ca -> :sswitch_2c
        0x8cc -> :sswitch_2b
        0x8cd -> :sswitch_2a
        0x8ce -> :sswitch_29
        0x8fc -> :sswitch_0
    .end sparse-switch
.end method
