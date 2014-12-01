.class public Landroid/webkitsec/WebSettingsClassic;
.super Landroid/webkitsec/WebSettings;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebSettingsClassic$1;,
        Landroid/webkitsec/WebSettingsClassic$EventHandler;,
        Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "4.1.1"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private isPopUpBrowserEnabled:Z

.field private mAcceptLanguage:Ljava/lang/String;

.field private mAdvanceSelectionBgColor:J

.field private mAdvanceTextSelection:Z

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkitsec/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

.field private mDeskTopmode:Z

.field private mDisableAnimation:Z

.field private mDisableSelection:Z

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEditableSupport:Z

.field private mEmailPreviewMode:Z

.field private mEnableAdvanceCommands:Z

.field private mEnableDoubleTapBlockZoom:Z

.field private mEnableImideo:I

.field private mEnableMagnifier:Z

.field private mEnableSmoothTransition:Z

.field private final mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFileSystemPath:Ljava/lang/String;

.field private mFileSystemPathHasBeenSet:Z

.field private mFilesystemEnabled:Z

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mHighResolutionDevice:Z

.field private mIsBrowserApp:Z

.field private mIsSetupViewportDisabled:Z

.field private mIsSkiaPictureEnabled:Z

.field private mIsSpellCheckEnabled:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLinkPrefetchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mNewActionPopup:Z

.field private mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;

.field private mOnewayScroll:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPasswordEchoEnabled:Z

.field private mPluginState:Landroid/webkitsec/WebSettings$PluginState;

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSearchEngineName:Ljava/lang/String;

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mSkipLayoutForHiddenHorizontalText:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportRssSniffing:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mTitleBarFixed:Z

.field private mTouchDebug:Z

.field private mUseDefaultClipboard:Z

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseEmailViewport:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWOFFEnabled:Z

.field private mWebGLEnabled:Z

.field private mWebView:Landroid/webkitsec/WebViewClassic;

.field private mWebnotificationDatabasePath:Ljava/lang/String;

.field private mWebnotificationEnabled:Z

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V
    .locals 8

    const/16 v6, 0x64

    const/16 v7, 0x10

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/webkitsec/WebSettings;-><init>()V

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z

    sget-object v1, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    iput v6, p0, Landroid/webkitsec/WebSettingsClassic;->mTextSize:I

    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    const-string/jumbo v1, "monospace"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    const-string/jumbo v1, "serif"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    const-string v1, "cursive"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    const-string v1, "fantasy"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    iput v4, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumFontSize:I

    iput v4, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumLogicalFontSize:I

    iput v7, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFontSize:I

    const/16 v1, 0xd

    iput v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFixedFontSize:I

    iput v3, p0, Landroid/webkitsec/WebSettingsClassic;->mPageCacheCapacity:I

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkImage:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mHardwareAccelSkia:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mShowVisualIndicator:Z

    sget-object v1, Landroid/webkitsec/WebSettings$PluginState;->OFF:Landroid/webkitsec/WebSettings$PluginState;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;

    sget-object v1, Landroid/webkitsec/WebSettings$NotificationState;->ON:Landroid/webkitsec/WebSettings$NotificationState;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDoubleTree:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWideViewport:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportMultipleWindows:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/webkitsec/WebSettingsClassic;->mMaximumDecodedImageSize:J

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabaseEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDomStorageEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mWorkersEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mXSSAuditorEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheMaxSize:J

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkitsec/WebSettings$ZoomDensity;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    sget-object v1, Landroid/webkitsec/WebSettings$RenderPriority;->NORMAL:Landroid/webkitsec/WebSettings$RenderPriority;

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

    const/4 v1, -0x1

    iput v1, p0, Landroid/webkitsec/WebSettingsClassic;->mOverrideCacheMode:I

    iput v6, p0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapZoom:I

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSaveFormData:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSavePassword:Z

    const-string v1, "GOOGLE"

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mLightTouchEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mNeedInitialFocus:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mNavDump:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportZoom:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mBuiltInZoomControls:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mDisplayZoomControls:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccess:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowContentAccess:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadWithOverviewMode:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableSmoothTransition:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mForceUserScalable:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mPasswordEchoEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUseEmailViewport:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEditableSupport:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableAdvanceCommands:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEmailPreviewMode:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableAnimation:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mHighResolutionDevice:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSpellCheckEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mNewActionPopup:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableMagnifier:Z

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceSelectionBgColor:J

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableSelection:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mWebGLEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableDoubleTapBlockZoom:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPathHasBeenSet:Z

    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPath:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mFilesystemEnabled:Z

    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationDatabasePath:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->isPopUpBrowserEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mWOFFEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mTitleBarFixed:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mDeskTopmode:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mOnewayScroll:Z

    iput v3, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableImideo:I

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportRssSniffing:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSetupViewportDisabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mIsBrowserApp:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSkiaPictureEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mSkipLayoutForHiddenHorizontalText:Z

    new-instance v1, Landroid/webkitsec/WebSettingsClassic$EventHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkitsec/WebSettingsClassic$EventHandler;-><init>(Landroid/webkitsec/WebSettingsClassic;Landroid/webkitsec/WebSettingsClassic$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    const v1, 0x104010c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    sget-object v1, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v7, :cond_1

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_password"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Landroid/webkitsec/WebSettingsClassic;->mPasswordEchoEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mPasswordEchoEnabled:Z

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/BrowserFrame;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/WebSettingsClassic;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkitsec/WebSettingsClassic;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkitsec/WebSettingsClassic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/WebSettings$RenderPriority;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkitsec/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "he"

    goto :goto_0

    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "id"

    goto :goto_0

    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    sget-object v3, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v1, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Landroid/webkitsec/WebSettingsClassic;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Web_SetUserAgent"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "en-US;q=0.2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/webkitsec/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Landroid/webkitsec/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "REL"

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Web_UseTempModelName"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_3
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10405eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10405ea

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v11

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_3
    const-string v9, "4.1.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_4
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_5
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2

    const/16 v1, 0x48

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$800(Landroid/webkitsec/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public enableDoubleTapBlockZoom()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableDoubleTapBlockZoom:Z

    return v0
.end method

.method public enableSmoothTransition()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableSmoothTransition:Z

    return v0
.end method

.method forceSetAdvancedCopyPasteFeature(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    return-void
.end method

.method public forceUserScalable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAdvanceCommands()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableAdvanceCommands:Z

    return v0
.end method

.method public getAdvancedCopyPasteFeature()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    return v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAllowFileAccessFromFileURLs()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillProfile:Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisableAnimation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableAnimation:Z

    return v0
.end method

.method public getDisableSelection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableSelection:Z

    return v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    sget v0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapZoom:I

    return v0
.end method

.method public getEditableSupport()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEditableSupport:Z

    return v0
.end method

.method public getEnableMagnifier()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableMagnifier:Z

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImideoDebugMode()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableImideo:I

    return v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    return v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNeedInitialFocus:Z

    return v0
.end method

.method public getNewActionPopup()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mNewActionPopup:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getNotificationState()Landroid/webkitsec/WebSettings$NotificationState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOnewayScrollEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mOnewayScroll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkitsec/WebSettings$PluginState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;

    sget-object v1, Landroid/webkitsec/WebSettings$PluginState;->ON:Landroid/webkitsec/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPopUpBrowserState()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->isPopUpBrowserEnabled:Z

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSavePassword:Z

    return v0
.end method

.method public getSearchEngineName()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "websettings.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside the getSearchEngineName function of WebSettings.java - returning value as"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUseDefaultClipboard()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    return v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getUseEmailViewPort()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseEmailViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    sget-object v3, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sput-object v0, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    :cond_3
    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getWebGLEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebGLEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isBrowserApp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mIsBrowserApp:Z

    return v0
.end method

.method public isDefaultZoomChanged()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    iget v1, v1, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDeskTopmode:Z

    return v0
.end method

.method public isEmailPreviewMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEmailPreviewMode:Z

    return v0
.end method

.method public isHighResolutionDevice()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mHighResolutionDevice:Z

    return v0
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebSettingsClassic;->getLayoutAlgorithm()Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method public isSetupViewportDisabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSetupViewportDisabled:Z

    return v0
.end method

.method isSkiaPictureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSkiaPictureEnabled:Z

    return v0
.end method

.method isSkipLayoutForHiddenHorizontalText()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSkipLayoutForHiddenHorizontalText:Z

    return v0
.end method

.method public isTitleBarFixed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTitleBarFixed:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setActualHeightHack(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setActualHeightHack(Z)V

    return-void
.end method

.method public setAdvanceCommands(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableAdvanceCommands:Z

    return-void
.end method

.method public setAdvancedCopyPasteFeature(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    if-eq v0, p1, :cond_3

    sget v0, Landroid/webkitsec/DebugFlags;->ENABLE_SAMSUNG_SELECTION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/webkitsec/DebugFlags;->ENABLE_SAMSUNG_SELECTION:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    :cond_2
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceTextSelection:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    goto :goto_0
.end method

.method public setAllowContentAccess(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowContentAccess:Z

    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccess:Z

    return-void
.end method

.method public declared-synchronized setAllowFileAccessFromFileURLs(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCacheMaxSize:J

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillProfile:Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillProfile:Landroid/webkitsec/WebSettingsClassic$AutoFillProfile;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkImage:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mBlockNetworkLoads:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->verifyNetworkAccess()V

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBlockRequestLayout(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setBlockRequestLayout(Z)V

    return-void
.end method

.method setBrowserApp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mIsBrowserApp:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mBuiltInZoomControls:Z

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mOverrideCacheMode:I

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabaseEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->pin(I)I

    move-result p1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFixedFontSize:I

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->pin(I)I

    move-result p1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultFontSize:I

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultViewport(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setDefaultViewport(I)V

    return-void
.end method

.method public setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDefaultZoom:Landroid/webkitsec/WebSettings$ZoomDensity;

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v1, p1, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->adjustDefaultZoomDensity(I)V

    :cond_0
    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDeskTopmode:Z

    return-void
.end method

.method public setDisableAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableAnimation:Z

    return-void
.end method

.method public setDisableSelection(Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDisableSelection:Z

    return p1
.end method

.method public setDisableSetupViewport(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSetupViewportDisabled:Z

    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDisplayZoomControls:Z

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDomStorageEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3

    sget v0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    sput p1, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$800(Landroid/webkitsec/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapZoom:I

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->updateDoubleTapZoom(I)V

    :cond_0
    return-void
.end method

.method public setEditableSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEditableSupport:Z

    return-void
.end method

.method public setEmailPreviewMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEmailPreviewMode:Z

    return-void
.end method

.method public setEnableDoubleTapBlockZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableDoubleTapBlockZoom:Z

    return-void
.end method

.method public setEnableMagnifier(Z)V
    .locals 3

    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    const-string v0, "com.android.browser"

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sec_container_1.com.android.browser"

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableMagnifier:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableMagnifier:Z

    goto :goto_0
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableSmoothTransition:Z

    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFileSystemPath(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPathHasBeenSet:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFileSystemPathHasBeenSet:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFilesystemEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFilesystemEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mFilesystemEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mGeolocationEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mHardwareAccelSkia:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHighResolutionDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mHighResolutionDevice:Z

    return-void
.end method

.method public declared-synchronized setImideoDebugMode(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mEnableImideo:I

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsContinousSpellCheck(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSpellCheckEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSpellCheckEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mJavaScriptEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->updateJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkitsec/WebSettings$LayoutAlgorithm;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WebViewClassic does not support TEXT_AUTOSIZING layout mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLightTouchEnabled:Z

    return-void
.end method

.method public declared-synchronized setLinkPrefetchEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadWithOverviewMode:Z

    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2

    iget-wide v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/webkitsec/WebSettingsClassic;->mMaximumDecodedImageSize:J

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    :cond_0
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->pin(I)I

    move-result p1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumFontSize:I

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->pin(I)I

    move-result p1

    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mMinimumLogicalFontSize:I

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mNavDump:Z

    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mNeedInitialFocus:Z

    :cond_0
    return-void
.end method

.method public setNewActionPopup(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mNewActionPopup:Z

    return-void
.end method

.method public declared-synchronized setNotificationState(Landroid/webkitsec/WebSettings$NotificationState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mNotificationState:Landroid/webkitsec/WebSettings$NotificationState;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnewayScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mOnewayScroll:Z

    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mPageCacheCapacity:I

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkitsec/WebSettings$PluginState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mPluginState:Landroid/webkitsec/WebSettings$PluginState;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/webkitsec/WebSettings$PluginState;->ON:Landroid/webkitsec/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkitsec/WebSettingsClassic;->setPluginState(Landroid/webkitsec/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkitsec/WebSettings$PluginState;->OFF:Landroid/webkitsec/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setPopUpBrowserState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->isPopUpBrowserEnabled:Z

    return-void
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebSettingsClassic;->setAutoFillEnabled(Z)V

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkitsec/WebSettings$RenderPriority;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$800(Landroid/webkitsec/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRssSniffing(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportRssSniffing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportRssSniffing:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSaveFormData:Z

    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSavePassword:Z

    return-void
.end method

.method public setSearchEngineName(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "websettings.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "now setting the mSearchEngineName inside websettings.java as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSearchEngineName:Ljava/lang/String;

    return-void
.end method

.method public setSelectionBgColor(J)V
    .locals 0

    iput-wide p1, p0, Landroid/webkitsec/WebSettingsClassic;->mAdvanceSelectionBgColor:J

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    return-void
.end method

.method public setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mShowVisualIndicator:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    :cond_0
    return-void
.end method

.method setSkiaPictureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mIsSkiaPictureEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    return-void
.end method

.method setSkipLayoutForHiddenHorizontalText(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSkipLayoutForHiddenHorizontalText:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V

    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportMultipleWindows:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportZoom:Z

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTextSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/webkitsec/WebSettingsClassic;->mTextSize:I

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTitleBarFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mTitleBarFixed:Z

    return-void
.end method

.method public declared-synchronized setTouchDebug(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    sput-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mTouchDebug:Z

    sput-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseDefaultClipboard(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultClipboard:Z

    return-void
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUseEmailViewPort(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseEmailViewport:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseEmailViewport:Z

    invoke-virtual {p0, p1}, Landroid/webkitsec/WebSettingsClassic;->setUseWideViewPort(Z)V

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseWideViewport:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    :try_start_0
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkitsec/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    sget-object v2, Landroid/webkitsec/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Landroid/webkitsec/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z

    :goto_0
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWOFFEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWOFFEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWOFFEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebGLEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebGLEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWebGLEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebNotificationDatabasePath(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationDatabasePath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebnotificationEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWebnotificationEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mWorkersEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/webkitsec/WebSettingsClassic;->mXSSAuditorEnabled:Z

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebSettingsClassic;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkitsec/BrowserFrame;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I

    :cond_0
    iget v1, p1, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkitsec/WebSettingsClassic;->nativeSync(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic;->mEventHandler:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$900(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
