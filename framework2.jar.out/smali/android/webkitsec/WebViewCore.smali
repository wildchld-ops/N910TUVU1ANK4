.class public final Landroid/webkitsec/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;,
        Landroid/webkitsec/WebViewCore$EditableParams;,
        Landroid/webkitsec/WebViewCore$ShowRectData;,
        Landroid/webkitsec/WebViewCore$DrawData;,
        Landroid/webkitsec/WebViewCore$ViewState;,
        Landroid/webkitsec/WebViewCore$EventHub;,
        Landroid/webkitsec/WebViewCore$SaveViewStateRequest;,
        Landroid/webkitsec/WebViewCore$FindAllRequest;,
        Landroid/webkitsec/WebViewCore$InvokeNotifyID;,
        Landroid/webkitsec/WebViewCore$InvokeEventparams;,
        Landroid/webkitsec/WebViewCore$NotificationPermissionsData;,
        Landroid/webkitsec/WebViewCore$SelectionCopiedData;,
        Landroid/webkitsec/WebViewCore$CopyParams;,
        Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkitsec/WebViewCore$TouchEventData;,
        Landroid/webkitsec/WebViewCore$TextFieldInitData;,
        Landroid/webkitsec/WebViewCore$AutoFillData;,
        Landroid/webkitsec/WebViewCore$WebKitHitTest;,
        Landroid/webkitsec/WebViewCore$TouchHighlightData;,
        Landroid/webkitsec/WebViewCore$TouchUpData;,
        Landroid/webkitsec/WebViewCore$TextSelectionData;,
        Landroid/webkitsec/WebViewCore$TextInputData;,
        Landroid/webkitsec/WebViewCore$ReplaceTextData;,
        Landroid/webkitsec/WebViewCore$PostUrlData;,
        Landroid/webkitsec/WebViewCore$GetUrlData;,
        Landroid/webkitsec/WebViewCore$MotionUpData;,
        Landroid/webkitsec/WebViewCore$JSKeyData;,
        Landroid/webkitsec/WebViewCore$JSInterfaceData;,
        Landroid/webkitsec/WebViewCore$BaseUrlData;,
        Landroid/webkitsec/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field private static final TOUCH_FLAG_HIT_HANDLER:I = 0x1

.field private static final TOUCH_FLAG_PREVENT_DEFAULT:I = 0x2

.field private static mRepaintScheduled:Z

.field private static sShouldMonitorWebCoreThread:Z

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private btextselection:Z

.field mBlockWebkitDraw:Z

.field private mBrowserFrame:Landroid/webkitsec/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkitsec/CallbackProxy;

.field private mChromeCanFocusDirection:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

.field private mDeviceMotionService:Landroid/webkitsec/DeviceMotionService;

.field private mDeviceOrientationService:Landroid/webkitsec/DeviceOrientationService;

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private final mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

.field private mFirstLayoutForNonStandardLoad:Z

.field private mHighMemoryUsageThresholdMb:I

.field private mHighUsageDeltaMb:I

.field private mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

.field private mIsRestored:Z

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastDrawData:Landroid/webkitsec/WebViewCore$DrawData;

.field private mLowMemoryUsageThresholdMb:I

.field private mMockGeolocation:Landroid/webkitsec/MockGeolocation;

.field private mNativeClass:I

.field private mPrevAdjust:F

.field private mPrevText:Ljava/lang/String;

.field private mPrevViewportDensityDpi:I

.field private mRestoredScale:F

.field private mRestoredTextWrapScale:F

.field private mRestoredX:I

.field private mRestoredY:I

.field private final mSettings:Landroid/webkitsec/WebSettingsClassic;

.field private mTextSelectionChangeReason:I

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;

.field private m_drawWasSkipped:Z

.field private m_skipDrawFlag:Z

.field private m_skipDrawFlagLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v1, "webcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "chromium_net"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x6e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "REVEAL_SELECTION"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SCROLL_TEXT_INPUT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LOAD_URL"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STOP_LOADING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RELOAD"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "KEY_DOWN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "KEY_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "VIEW_SIZE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "GO_BACK_FORWARD"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SET_SCROLL_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RESTORE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "PAUSE_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "RESUME_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CLEAR_CACHE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "CLEAR_HISTORY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "SET_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "REPLACE_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "PASS_TO_JS"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SET_GLOBAL_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "SET_NETWORK_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "DOC_HAS_IMAGES"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "FAKE_CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "DELETE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "LISTBOX_CHOICES"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "SINGLE_LISTBOX_CHOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "MESSAGE_RELAY"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "SET_BACKGROUND_COLOR"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "SET_MOVE_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "SAVE_DOCUMENT_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "129"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "WEBKIT_DRAW"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "131"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "POST_URL"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "CLEAR_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "REQUEST_CURSOR_HREF"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "ADD_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "LOAD_DATA"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "SET_ACTIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "ON_PAUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "ON_RESUME"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FREE_MEMORY"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "VALID_NODE_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "SAVE_WEBARCHIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "WEBKIT_DRAW_LAYERS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "REMOVE_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "DELKEY_SIML_FOR_COUNT"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "GET_TEXT_AROUND_CURSOR"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "SET_SELECTION_FOR_EDITING"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "DELETE_SURROUNDING_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "GET_BODY_HTML"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "GET_SLECTION_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "GET_BODY_PLAIN_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "EXEC_COMMAND"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "COPY_SAVE_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "DRAW_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "GET_EMAIL_MARKUP"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "SET_EDITABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "GET_CARET_RECT"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "SET_SELECTION_NONE"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "GET_SELECTION_NONE"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "CAN_UNDO"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "CAN_REDO"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "CLEAR_REDO_UNDO"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "GET_BODY_EMPTY"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "CONTENT_SELECTION_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "RESTORE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "SAVE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "CHECK_SELECTION_AT_BOUNDRY"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "MOVE_SINGLE_CURSOR_HANDLER"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "UPDATE_IM_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "SET_COMPOSING_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "GET_SLECTION_OFFSET_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "GET_STATE_IN_RICHLY_EDITABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "SHOW_ACTION_BAR"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "INSERT_IMAGE_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "RESIZE_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "GET_CURRENT_FONTSIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "CHECK_SELECTED_CLOSEST_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "CHECK_END_OF_WORD_AT_POSITION"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "GET_CURRENT_FONTVALUE"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "GET_IMAGE_SIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "GET_SELECTEDIMAGE_RECT"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "SET_PAGE_ZOOM"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "GET_SELECTED_IMAGE_URI"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "SELECT_BETWEEN_START_AND_END"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "SET_CURSOR_FROM_RANGE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "IS_AT_BOUNDARY"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "DROP_THE_DRAGGED_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "IS_TOUCHED_OUTSIDE"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "RESET_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "GET_SELECTED_HTML_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "UNMARK_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "CHECK_SPELLING_OF_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "COPY_MOVE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "CLEAR_TEXT_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "CLOSEST_WORD_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "COPY_BEGIN_EXTEND_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "ADVANCE_TEXT_SELECTION_ALL"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "UPDATE_EDITTEXT_SELECTION_IN_SCROLL"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "GET_SELECTED_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "SET_COLOR_CHOICE"

    aput-object v3, v1, v2

    sput-object v1, Landroid/webkitsec/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    sput-boolean v4, Landroid/webkitsec/WebViewCore;->mRepaintScheduled:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "webcore"

    const-string v2, "Unable to load native support libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/CallbackProxy;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkitsec/WebViewClassic;",
            "Landroid/webkitsec/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    iput v6, p0, Landroid/webkitsec/WebViewCore;->mViewportHeight:I

    iput v9, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iput v9, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    iput v9, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkitsec/WebViewCore;->mViewportUserScalable:Z

    iput v6, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    iput v6, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    iput v7, p0, Landroid/webkitsec/WebViewCore;->mPrevAdjust:F

    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    iput v7, p0, Landroid/webkitsec/WebViewCore;->mRestoredScale:F

    iput v7, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    iput v9, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    iput v9, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    new-instance v5, Landroid/webkitsec/MockGeolocation;

    invoke-direct {v5, p0}, Landroid/webkitsec/MockGeolocation;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    new-instance v5, Landroid/webkitsec/DeviceMotionAndOrientationManager;

    invoke-direct {v5, p0}, Landroid/webkitsec/DeviceMotionAndOrientationManager;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    iput v9, p0, Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I

    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    iput v9, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    iput v9, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    const/high16 v5, 0x3f800000

    iput v5, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewScale:F

    iput-object v8, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput-object v8, p0, Landroid/webkitsec/WebViewCore;->mLastDrawData:Landroid/webkitsec/WebViewCore$DrawData;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->m_drawWasSkipped:Z

    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->mBlockWebkitDraw:Z

    iput-object p3, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    iput-object p2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object p4, p0, Landroid/webkitsec/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    iput-object p1, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    const-class v6, Landroid/webkitsec/WebViewCore;

    monitor-enter v6

    :try_start_0
    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/webkitsec/WebViewCore$WebCoreThread;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/webkitsec/WebViewCore$WebCoreThread;-><init>(Landroid/webkitsec/WebViewCore$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v5, "WebViewCoreThread"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v5, Landroid/webkitsec/WebViewCore;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-boolean v5, Landroid/webkitsec/WebViewCore;->sShouldMonitorWebCoreThread:Z

    if-eqz v5, :cond_0

    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-static {v5}, Landroid/webkitsec/WebCoreThreadWatchdog;->start(Landroid/os/Handler;)Landroid/webkitsec/WebCoreThreadWatchdog;

    :cond_0
    invoke-static {p2}, Landroid/webkitsec/WebCoreThreadWatchdog;->registerWebView(Landroid/webkitsec/WebViewClassic;)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v5, Landroid/webkitsec/WebViewCore$EventHub;

    invoke-direct {v5, p0, v8}, Landroid/webkitsec/WebViewCore$EventHub;-><init>(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewCore$1;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    new-instance v5, Landroid/webkitsec/WebSettingsClassic;

    iget-object v6, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v5, v6, v7}, Landroid/webkitsec/WebSettingsClassic;-><init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-static {}, Landroid/webkitsec/WebIconDatabase;->getInstance()Landroid/webkitsec/WebIconDatabase;

    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebStorageClassic;->createUIHandler()V

    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->getInstance()Landroid/webkitsec/GeolocationPermissionsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/GeolocationPermissionsClassic;->createUIHandler()V

    iget-object v5, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    iput v5, p0, Landroid/webkitsec/WebViewCore;->mLowMemoryUsageThresholdMb:I

    iget v5, p0, Landroid/webkitsec/WebViewCore;->mLowMemoryUsageThresholdMb:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Landroid/webkitsec/WebViewCore;->mHighMemoryUsageThresholdMb:I

    iget v5, p0, Landroid/webkitsec/WebViewCore;->mLowMemoryUsageThresholdMb:I

    div-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/webkitsec/WebViewCore;->mHighUsageDeltaMb:I

    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-eqz v5, :cond_1

    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v5, "webcore"

    const-string v7, "Caught exception while waiting for thread creation."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method static synthetic access$10000(Landroid/webkitsec/WebViewCore;III)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10100(Landroid/webkitsec/WebViewCore;I[ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSendListBoxChoices(I[ZI)V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkitsec/WebViewCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSendListBoxChoice(II)V

    return-void
.end method

.method static synthetic access$10300(Landroid/webkitsec/WebViewCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetBackgroundColor(II)V

    return-void
.end method

.method static synthetic access$10400(Landroid/webkitsec/WebViewCore;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeDumpDomTree(IZ)V

    return-void
.end method

.method static synthetic access$10500(Landroid/webkitsec/WebViewCore;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeDumpRenderTree(IZ)V

    return-void
.end method

.method static synthetic access$10600(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10800(Landroid/webkitsec/WebViewCore;ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$10900(Landroid/webkitsec/WebViewCore;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Landroid/webkitsec/WebViewCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeFullScreenPluginHidden(II)V

    return-void
.end method

.method static synthetic access$11100(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativePluginSurfaceReady(I)V

    return-void
.end method

.method static synthetic access$11200(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeNotifyAnimationStarted(I)V

    return-void
.end method

.method static synthetic access$11300(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->setUseMockGeolocation()V

    return-void
.end method

.method static synthetic access$11400(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->setUseMockDeviceOrientation()V

    return-void
.end method

.method static synthetic access$11500(Landroid/webkitsec/WebViewCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeAutoFillForm(II)V

    return-void
.end method

.method static synthetic access$11600(Landroid/webkitsec/WebViewCore;IILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/webkitsec/WebViewCore;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeDeleteText(IIIII)V

    return-void
.end method

.method static synthetic access$11800(Landroid/webkitsec/WebViewCore;IIIII)Ljava/lang/String;
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11900(Landroid/webkitsec/WebViewCore;IIIIZZFI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/webkitsec/WebViewCore;->nativeCopyMoveSelection(IIIIZZFI)V

    return-void
.end method

.method static synthetic access$12000(Landroid/webkitsec/WebViewCore;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeWebTextSelectionAll(IIIII)V

    return-void
.end method

.method static synthetic access$12102(Landroid/webkitsec/WebViewCore;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    return p1
.end method

.method static synthetic access$12200(Landroid/webkitsec/WebViewCore;IIIFZ)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeSelectClosestWord(IIIFZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12300(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeClearTextSelectionEx(III)V

    return-void
.end method

.method static synthetic access$12400(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlBT()V

    return-void
.end method

.method static synthetic access$12500(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeInsertText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/webkitsec/WebViewCore;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->nativeSelectText(IIII)V

    return-void
.end method

.method static synthetic access$12700(Landroid/webkitsec/WebViewCore;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSelectWordAt(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12800(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSelectAll(I)V

    return-void
.end method

.method static synthetic access$12900(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeFindAll(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCloseIdleConnections(I)V

    return-void
.end method

.method static synthetic access$13000(Landroid/webkitsec/WebViewCore;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeFindNext(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$13100(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->applyreadability(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13200(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->loadinitialJs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13300(Landroid/webkitsec/WebViewCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetInitialFocus(II)V

    return-void
.end method

.method static synthetic access$13400(Landroid/webkitsec/WebViewCore;Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->saveViewState(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V

    return-void
.end method

.method static synthetic access$13500(Landroid/webkitsec/WebViewCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSendColorPickerChoice(II)V

    return-void
.end method

.method static synthetic access$13600(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$13700(Landroid/webkitsec/WebViewCore;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$13800(Landroid/webkitsec/WebViewCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeNotificationIDback(II)V

    return-void
.end method

.method static synthetic access$13900(Landroid/webkitsec/WebViewCore;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeMoveFocusToNext(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$14000(Landroid/webkitsec/WebViewCore;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeMoveFocusToPrevious(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewClassic;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    return-object p1
.end method

.method static synthetic access$14100(Landroid/webkitsec/WebViewCore;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeMouseClick(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14200(Landroid/webkitsec/WebViewCore;II[I[I[IIII)I
    .locals 1

    invoke-direct/range {p0 .. p8}, Landroid/webkitsec/WebViewCore;->nativeHandleTouchEvent(II[I[I[IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$14302(Landroid/webkitsec/WebViewCore;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method static synthetic access$14400(Landroid/webkitsec/WebViewCore;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14500(Landroid/webkitsec/WebViewCore;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/BrowserFrame;)Landroid/webkitsec/BrowserFrame;
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebSettingsClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeRevealSelection(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkitsec/WebViewCore;IFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeScrollFocusedTextInput(IFI)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewCore$EventHub;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeupdateTextSelection(I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeContentInvalidateAll(I)V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkitsec/WebViewCore;Landroid/view/KeyEvent;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->keyPress(I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewClassic$ViewSizeData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->viewSizeChanged(Landroid/webkitsec/WebViewClassic$ViewSizeData;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkitsec/WebViewCore;IZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->nativeSetScrollOffset(IZII)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/webkitsec/WebViewCore;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeGetInputTextBounds(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkitsec/WebViewCore;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeCheckSpellingOfWordAtPosition(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeUnmarkWord(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkitsec/WebViewCore;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeSetGlobalBounds(IIIII)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeRecalcWidthAndForceLayout(I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativePause(I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeResume(I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkitsec/WebViewCore;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/WebViewCore;)I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    return v0
.end method

.method static synthetic access$4000(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeFreeMemory(I)V

    return-void
.end method

.method static synthetic access$402(Landroid/webkitsec/WebViewCore;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$4100(Landroid/webkitsec/WebViewCore;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSimulateDelKeyForCount(II)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkitsec/WebViewCore;IIZ)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeGetTextAroundCursor(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeDeleteSurroundingText(III)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkitsec/WebViewCore;I)Landroid/graphics/Point;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionOffset(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionOffsetImage(I)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetBodyText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetBodyHTML(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Landroid/webkitsec/WebViewCore;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetBodyEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/webkitsec/WebViewCore;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeContentSelectionType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/webkitsec/WebViewCore;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSetNewStorageLimit(IJ)V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkitsec/WebViewCore;IZ)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeGetCursorRect(IZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroid/webkitsec/WebViewCore;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeExecCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkitsec/WebViewCore;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCanUndo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/webkitsec/WebViewCore;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCanRedo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/webkitsec/WebViewCore;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeisTouchedOutside(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeUndoRedoStateReset(I)V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeCopyAndSaveImage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkitsec/WebViewCore;I)Landroid/webkitsec/WebHTMLMarkupData;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetFullMarkupData(I)Landroid/webkitsec/WebHTMLMarkupData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/webkitsec/WebViewCore;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetEditable(IZ)V

    return-void
.end method

.method static synthetic access$602(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    sput-object p0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6100(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSetSelectionEditable(III)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeMoveSingleCursorHandler(III)V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSetComposingRegion(III)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkitsec/WebViewCore;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetPageZoom(IF)V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSetSelectionNone(I)V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkitsec/WebViewCore;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionNone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSetComposingSelectionNone(I)V

    return-void
.end method

.method static synthetic access$6800(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeRestorePreviousSelectionController(I)V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSaveSelectionController(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$7000(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeUpdateIMSelection(III)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkitsec/WebViewCore;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCheckSelectionAtBoundry(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Landroid/webkitsec/WebViewCore;ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeInsertContent(ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCheckSelectedClosestWord(I)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkitsec/WebViewCore;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetStateInRichlyEditableText(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeinsertImageContent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeresizeImage(III)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkitsec/WebViewCore;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativegetCurrentFontSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/webkitsec/WebViewCore;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativegetCurrentFontValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Landroid/webkitsec/WebViewCore;III)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeGetImageSize(III)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/WebViewCore;->nativeCertTrustChanged()V

    return-void
.end method

.method static synthetic access$8000(Landroid/webkitsec/WebViewCore;I)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedImageRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->webkitActionBarDraw()V

    return-void
.end method

.method static synthetic access$8200(Landroid/webkitsec/WebViewCore;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeCheckEndOfWordAtPosition(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedImageUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Landroid/webkitsec/WebViewCore;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeSelectBWStartAndEnd(IIIII)V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSetCursorFromRangeSelectionController(I)V

    return-void
.end method

.method static synthetic access$8600(Landroid/webkitsec/WebViewCore;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeIsAtBoundary(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeDropTheDraggedText(III)V

    return-void
.end method

.method static synthetic access$8800(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeResetSelectionController(I)V

    return-void
.end method

.method static synthetic access$8900(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedHTMLText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/CallbackProxy;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$9100(Landroid/webkitsec/WebViewCore;IIILjava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/webkitsec/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkitsec/WebViewCore;IILjava/lang/String;IIZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/webkitsec/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$9300(Landroid/webkitsec/WebViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$9400(Landroid/webkitsec/WebViewCore;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetFocusControllerActive(IZ)V

    return-void
.end method

.method static synthetic access$9500(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$9600(Landroid/webkitsec/WebViewCore;IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->performHitTest(IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9700(Landroid/webkitsec/WebViewCore;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->nativeDeleteSelection(IIII)V

    return-void
.end method

.method static synthetic access$9800(Landroid/webkitsec/WebViewCore;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSetSelection(III)V

    return-void
.end method

.method static synthetic access$9902(Landroid/webkitsec/WebViewCore;I)I
    .locals 0

    iput p1, p0, Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I

    return p1
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkitsec/ViewManager$ChildView;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->createSurface(Landroid/view/View;)Landroid/webkitsec/ViewManager$ChildView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/webkitsec/ViewManager$ChildView;->attachView(IIII)V

    :cond_0
    return-object v0
.end method

.method private native applyreadability(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private calculateWindowWidth(I)I
    .locals 3

    move v0, p1

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-lez v1, :cond_2

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private chromeCanTakeFocus(I)Z
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->mapDirection(I)I

    move-result v0

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mChromeCanFocusDirection:I

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private chromeTakeFocus(I)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->mapDirection(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkitsec/BrowserFrame;->clearCache()V

    return-void
.end method

.method private clearTextEntry()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(IIZZ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkitsec/BrowserFrame;->firstLayoutDone()Z

    move-result v3

    if-nez v3, :cond_1

    iput p1, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    iput p2, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v4, v3, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    if-eqz p3, :cond_2

    move v3, v1

    :goto_1
    if-eqz p4, :cond_3

    :goto_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private createSurface(Landroid/view/View;)Landroid/webkitsec/ViewManager$ChildView;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v1, "webcore"

    const-string v2, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_2
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v1}, Landroid/webkitsec/ViewManager;->createView()Landroid/webkitsec/ViewManager$ChildView;

    move-result-object v0

    iput-object p1, v0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method private createTextSelection(III)Landroid/webkitsec/WebViewCore$TextSelectionData;
    .locals 2

    new-instance v0, Landroid/webkitsec/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2, p3}, Landroid/webkitsec/WebViewCore$TextSelectionData;-><init>(III)V

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I

    iput v1, v0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mSelectionReason:I

    return-object v0
.end method

.method private destroySurface(Landroid/webkitsec/ViewManager$ChildView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/webkitsec/ViewManager$ChildView;->removeView()V

    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->didFirstLayout()V

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->setupViewport(Z)V

    if-nez v0, :cond_2

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v2}, Landroid/webkitsec/ViewManager;->postReadyToDrawAll()V

    :cond_2
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput v1, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    iput v1, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    iput-boolean v1, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    iput v1, p0, Landroid/webkitsec/WebViewCore;->mRestoredScale:F

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private focusNodeChanged(ILandroid/webkitsec/WebViewCore$WebKitHitTest;)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static getFixedDisplayDensity(Landroid/content/Context;)F
    .locals 3

    const/high16 v2, 0x42c80000

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v0, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    return v1
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {v3}, Landroid/webkitsec/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkitsec/PluginManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkitsec/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to a plugin APK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, p2}, Landroid/webkitsec/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin class ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsedQuota()J
    .locals 8

    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebStorageClassic;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    :cond_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkitsec/WebStorage$Origin;

    invoke-virtual {v5}, Landroid/webkitsec/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method private hideFullScreenPlugin()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initEditField(IIILandroid/webkitsec/WebViewCore$TextFieldInitData;)V
    .locals 5

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    invoke-static {v0, v1, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    iget v2, p4, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mFieldPointer:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->createTextSelection(III)Landroid/webkitsec/WebViewCore$TextSelectionData;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initSelectField(Landroid/webkitsec/WebViewCore$TextFieldInitData;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xaa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    new-instance v0, Landroid/webkitsec/BrowserFrame;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    iget-object v4, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    iget-object v5, p0, Landroid/webkitsec/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkitsec/WebViewCore;Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/WebSettingsClassic;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettingsClassic;->syncSettingsAndCreateHandler(Landroid/webkitsec/BrowserFrame;)V

    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->getInstance()Landroid/webkitsec/WebIconDatabaseClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebIconDatabaseClassic;->createHandler()V

    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebStorageClassic;->createHandler()V

    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->getInstance()Landroid/webkitsec/GeolocationPermissionsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/GeolocationPermissionsClassic;->createHandler()V

    invoke-static {}, Landroid/webkitsec/FileSystemQuota;->getInstance()Landroid/webkitsec/FileSystemQuota;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/FileSystemQuota;->createHandler()V

    invoke-static {}, Landroid/webkitsec/NotificationPermissions;->getInstance()Landroid/webkitsec/NotificationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/NotificationPermissions;->createHandler()V

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$200(Landroid/webkitsec/WebViewCore$EventHub;)V

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static isSupportedMediaMimeType(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "video/m4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isUpdatePicturePaused(Landroid/webkitsec/WebViewCore;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsPaused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn(Z)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x86

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private key(Landroid/view/KeyEvent;IZ)V
    .locals 11

    iput p2, p0, Landroid/webkitsec/WebViewCore;->mChromeCanFocusDirection:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    :cond_0
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v7

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/webkitsec/WebViewCore;->nativeKey(IIIIZZZZ)Z

    move-result v9

    if-nez p3, :cond_1

    const/16 v0, 0x13

    if-lt v2, v0, :cond_1

    const/16 v0, 0x16

    if-le v2, v0, :cond_2

    :cond_1
    const/16 v0, 0x42

    if-ne v2, v0, :cond_3

    :cond_2
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewCore;->mChromeCanFocusDirection:I

    if-nez v9, :cond_4

    const/16 v0, 0x42

    if-eq v2, v0, :cond_4

    const/16 v0, 0x13

    if-lt v2, v0, :cond_5

    const/16 v0, 0x16

    if-gt v2, v0, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    iput p2, v10, Landroid/os/Message;->arg1:I

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private keyPress(I)V
    .locals 9

    const/4 v2, 0x0

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    const/4 v8, 0x1

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/webkitsec/WebViewCore;->nativeKey(IIIIZZZZ)Z

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/webkitsec/WebViewCore;->nativeKey(IIIIZZZZ)Z

    return-void
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "webcore"

    const-string v1, " CORE loadUrl: called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private native loadinitialJs(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private mapDirection(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x82

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x42

    goto :goto_0

    nop

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

.method private native nativeAutoFillForm(II)V
.end method

.method private native nativeCanRedo(I)Z
.end method

.method private native nativeCanUndo(I)Z
.end method

.method private static native nativeCertTrustChanged()V
.end method

.method private native nativeCheckEndOfWordAtPosition(III)I
.end method

.method private native nativeCheckSelectedClosestWord(I)V
.end method

.method private native nativeCheckSelectionAtBoundry(I)I
.end method

.method private native nativeCheckSpellingOfWordAtPosition(III)Z
.end method

.method private native nativeClearContent(I)V
.end method

.method private native nativeClearTextSelection(I)V
.end method

.method private native nativeClearTextSelectionEx(III)V
.end method

.method private native nativeCloseIdleConnections(I)V
.end method

.method private native nativeContentInvalidateAll(I)V
.end method

.method private native nativeContentSelectionType(I)I
.end method

.method private native nativeCopyAndSaveImage(ILjava/lang/String;)Z
.end method

.method private native nativeCopyMoveSelection(IIIIZZFI)V
.end method

.method private native nativeDeleteSelection(IIII)V
.end method

.method private native nativeDeleteSurroundingText(III)V
.end method

.method private native nativeDeleteText(IIIII)V
.end method

.method private native nativeDropTheDraggedText(III)V
.end method

.method private native nativeDumpDomTree(IZ)V
.end method

.method private native nativeDumpRenderTree(IZ)V
.end method

.method private native nativeExecCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeExtractSmartClipData(IIIII)Ljava/lang/String;
.end method

.method private static native nativeExtractSmartClipDataAsMarkup(IIIII)Ljava/lang/String;
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFindAll(ILjava/lang/String;)I
.end method

.method private native nativeFindNext(IZ)I
.end method

.method private native nativeFocusBoundsChanged(I)Z
.end method

.method private native nativeFreeMemory(I)V
.end method

.method private native nativeFullScreenPluginHidden(II)V
.end method

.method private native nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
.end method

.method private native nativeGetBodyEmpty(I)Z
.end method

.method private native nativeGetBodyHTML(I)Ljava/lang/String;
.end method

.method private native nativeGetBodyText(I)Ljava/lang/String;
.end method

.method private native nativeGetContentMinPrefWidth(I)I
.end method

.method private native nativeGetCursorRect(IZ)Landroid/graphics/Rect;
.end method

.method private native nativeGetFullMarkupData(I)Landroid/webkitsec/WebHTMLMarkupData;
.end method

.method private native nativeGetImageSize(III)Landroid/graphics/Rect;
.end method

.method private native nativeGetInputTextBounds(ILandroid/graphics/Rect;)V
.end method

.method private native nativeGetSelectedHTMLText(I)Ljava/lang/String;
.end method

.method private native nativeGetSelectedImageRect(I)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelectedImageUri(I)Ljava/lang/String;
.end method

.method private native nativeGetSelectedText(I)Ljava/lang/String;
.end method

.method private native nativeGetSelectionGranularity(I)I
.end method

.method private native nativeGetSelectionMultiColInfo(I)Z
.end method

.method private native nativeGetSelectionNone(I)Z
.end method

.method private native nativeGetSelectionOffset(I)Landroid/graphics/Point;
.end method

.method private native nativeGetSelectionOffsetImage(I)V
.end method

.method private native nativeGetStateInRichlyEditableText(I)I
.end method

.method private native nativeGetText(IIIII)Ljava/lang/String;
.end method

.method private native nativeGetTextAroundCursor(IIZ)Ljava/lang/String;
.end method

.method private native nativeGetWebFeedLinks(I)[Landroid/webkitsec/WebFeedLink;
.end method

.method private native nativeHandleTouchEvent(II[I[I[IIII)I
.end method

.method private native nativeHitTest(IIIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
.end method

.method private native nativeInsertContent(ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation
.end method

.method private native nativeInsertText(ILjava/lang/String;)V
.end method

.method private native nativeIsAtBoundary(III)I
.end method

.method private native nativeKey(IIIIZZZZ)Z
.end method

.method private native nativeModifySelection(III)Ljava/lang/String;
.end method

.method private native nativeMouseClick(I)Z
.end method

.method private native nativeMoveFocusToNext(I)Z
.end method

.method private native nativeMoveFocusToPrevious(I)Z
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveSingleCursorHandler(III)V
.end method

.method private native nativeNotificationIDback(II)V
.end method

.method private native nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
.end method

.method private native nativeNotificationResponseback(Ljava/lang/String;I)V
.end method

.method private native nativeNotifyAnimationStarted(I)V
.end method

.method private native nativePause(I)V
.end method

.method private native nativePluginSurfaceReady(I)V
.end method

.method private native nativeProvideVisitedHistory(I[Ljava/lang/String;)V
.end method

.method private native nativeRecalcWidthAndForceLayout(I)V
.end method

.method private native nativeRecordContent(ILandroid/graphics/Point;)I
.end method

.method private native nativeRecordSelectionCopiedData(ILandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
.end method

.method private native nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IIILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(III)Ljava/lang/String;
.end method

.method private native nativeResetSelectionController(I)V
.end method

.method private native nativeRestorePreviousSelectionController(I)V
.end method

.method private native nativeResume(I)V
.end method

.method private native nativeRetrieveAnchorText(III)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(III)Ljava/lang/String;
.end method

.method private native nativeRetrieveImageSource(III)Ljava/lang/String;
.end method

.method private native nativeRevealSelection(I)V
.end method

.method private native nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeSaveSelectionController(I)V
.end method

.method private native nativeScrollFocusedTextInput(IFI)V
.end method

.method private native nativeScrollLayer(IILandroid/graphics/Rect;)V
.end method

.method private native nativeSelectAll(I)V
.end method

.method private native nativeSelectBWStartAndEnd(IIIII)V
.end method

.method private native nativeSelectClosestWord(IIIFZ)Z
.end method

.method private native nativeSelectText(IIII)V
.end method

.method private native nativeSelectWordAt(III)Z
.end method

.method private native nativeSendColorPickerChoice(II)V
.end method

.method private native nativeSendListBoxChoice(II)V
.end method

.method private native nativeSendListBoxChoices(I[ZI)V
.end method

.method private native nativeSetBackgroundColor(II)V
.end method

.method private native nativeSetComposingRegion(III)V
.end method

.method private native nativeSetComposingSelectionNone(I)V
.end method

.method private native nativeSetCursorFromRangeSelectionController(I)V
.end method

.method private native nativeSetEditable(IZ)V
.end method

.method private native nativeSetFocusControllerActive(IZ)V
.end method

.method private native nativeSetGlobalBounds(IIIII)V
.end method

.method private native nativeSetInitialFocus(II)V
.end method

.method private native nativeSetIsPaused(IZ)V
.end method

.method private native nativeSetJsFlags(ILjava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(IJ)V
.end method

.method private native nativeSetPageZoom(IF)V
.end method

.method private native nativeSetScrollOffset(IZII)V
.end method

.method private native nativeSetSelection(III)V
.end method

.method private native nativeSetSelectionEditable(III)V
.end method

.method private native nativeSetSelectionEditableImage(III)V
.end method

.method private native nativeSetSelectionNone(I)V
.end method

.method private native nativeSetSize(IIIIFIIIIZ)V
.end method

.method private native nativeSimulateDelKeyForCount(II)V
.end method

.method private native nativeUndoRedoStateReset(I)V
.end method

.method private native nativeUnmarkWord(ILjava/lang/String;)V
.end method

.method private native nativeUpdateIMSelection(III)V
.end method

.method private native nativeUpdateTextSelectionStartAndEnd(I)V
.end method

.method private native nativeWebTextSelectionAll(IIIII)V
.end method

.method private native nativegetCurrentFontSize(I)I
.end method

.method private native nativegetCurrentFontValue(I)I
.end method

.method private native nativeinsertImageContent(ILjava/lang/String;)V
.end method

.method private native nativeisTouchedOutside(III)Z
.end method

.method private native nativeresizeImage(III)V
.end method

.method private native nativeupdateTextSelection(I)V
.end method

.method private needTouchEvents(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x74

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private openColorChooser()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "openColorChooser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x9c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private openFileChooser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->openFileChooser(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v0, "com.google.android.apps.docs.storage"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v7, ""

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    invoke-virtual {v0, v7, v9}, Landroid/webkitsec/JWebCoreJavaBridge;->storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v9

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    const-string v2, "Cannot attach file from Drive"

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v9, ""

    goto :goto_1

    :cond_3
    const-string v9, ""

    goto :goto_1
.end method

.method private native passToJs(IILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .locals 2

    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkitsec/JWebCoreJavaBridge;->pause()V

    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkitsec/WebViewCore;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->enableSmoothTransition()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot pauseUpdatePicture, core destroyed or not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsPaused:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private performHitTest(IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
    .locals 7

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewCore;->nativeHitTest(IIIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;

    move-result-object v6

    iput p1, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestX:I

    iput p2, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestY:I

    iput p3, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestSlop:I

    iput-boolean p4, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestMovedMouse:Z

    return-object v6
.end method

.method static reducePriority()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private requestDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x9e

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x76

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private requestListBox([Ljava/lang/String;[II)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->requestListBox([Ljava/lang/String;[II)V

    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[I[I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->requestListBox([Ljava/lang/String;[I[I)V

    :cond_0
    return-void
.end method

.method private restoreScale(FF)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkitsec/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    iput p1, p0, Landroid/webkitsec/WebViewCore;->mRestoredScale:F

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    :cond_0
    return-void
.end method

.method private restoreState(I)V
    .locals 5

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getSize()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    iget v4, v4, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebHistoryItemClassic;->inflate(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    iget v3, v3, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkitsec/WebBackForwardListClassic;->restoreIndex(II)V

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    goto :goto_0
.end method

.method static resumePriority()V
    .locals 3

    const/4 v2, 0x2

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public static resumeTimers()V
    .locals 2

    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkitsec/JWebCoreJavaBridge;->resume()V

    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot resumeUpdatePicture, core destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveViewState(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/webkitsec/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$DrawData;-><init>()V

    iget v3, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Landroid/webkitsec/WebViewCore;->nativeRecordContent(ILandroid/graphics/Point;)I

    move-result v3

    iput v3, v0, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/webkitsec/ViewStateSerializer;->serializeViewState(Ljava/io/OutputStream;Landroid/webkitsec/WebViewCore$DrawData;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iget v3, v0, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/16 v4, 0x82

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v3, v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V

    :cond_0
    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mLastDrawData:Landroid/webkitsec/WebViewCore$DrawData;

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->webkitDraw(Landroid/webkitsec/WebViewCore$DrawData;)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "webcore"

    const-string v4, "Failed to save view state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/BrowserFrame;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectAt(II)V
    .locals 0

    return-void
.end method

.method private sendNotifyProgressFinished()V
    .locals 0

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->contentDraw()V

    return-void
.end method

.method private sendPluginDrawMsg()V
    .locals 1

    const/16 v0, 0xc3

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method private sendScrollRectOnScreen(IIII)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xb4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private sendStartActionMode(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xa2

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static sendStaticMessage(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private setScrollbarModes(II)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static setShouldMonitorWebCoreThread()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkitsec/WebViewCore;->sShouldMonitorWebCoreThread:Z

    return-void
.end method

.method private setUseMockDeviceOrientation()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Landroid/webkitsec/DeviceMotionAndOrientationManager;->setUseMock()V

    return-void
.end method

.method private setUseMockGeolocation()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    invoke-virtual {v0}, Landroid/webkitsec/MockGeolocation;->setUseMock()V

    return-void
.end method

.method private native setViewportSettingsFromNative(I)V
.end method

.method private setWebTextViewAutoFillable(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x84

    new-instance v2, Landroid/webkitsec/WebViewCore$AutoFillData;

    invoke-direct {v2, p1, p2}, Landroid/webkitsec/WebViewCore$AutoFillData;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private setupViewport(Z)V
    .locals 15

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->isSetupViewportDisabled()Z

    move-result v11

    if-nez v11, :cond_2

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v11}, Landroid/webkitsec/WebViewCore;->setViewportSettingsFromNative(I)V

    :cond_2
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_4

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_3

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    :cond_3
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_4

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    :cond_4
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->forceUserScalable()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkitsec/WebViewCore;->mViewportUserScalable:Z

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_13

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_5

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    div-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    :cond_5
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_6

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    :cond_6
    :goto_1
    const/high16 v0, 0x3f800000

    const-string v11, "JP"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CountryISO"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_15

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/webkitsec/WebViewCore;->getFixedDisplayDensity(Landroid/content/Context;)F

    move-result v0

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->isDefaultZoomChanged()Z

    move-result v11

    if-nez v11, :cond_8

    if-eqz v4, :cond_9

    const-string v11, "com.android.email"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v0

    :cond_9
    :goto_3
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x87

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v11

    cmpl-float v11, v0, v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x87

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    const/high16 v11, 0x42c80000

    mul-float/2addr v11, v0

    float-to-int v2, v11

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_b

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    :cond_b
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_c

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    :cond_c
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_d

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    :cond_d
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-nez v11, :cond_e

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-nez v11, :cond_e

    iput v2, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    :cond_e
    iget-boolean v11, p0, Landroid/webkitsec/WebViewCore;->mViewportUserScalable:Z

    if-nez v11, :cond_f

    iput v2, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iput v2, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    iput v2, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    :cond_f
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-le v11, v12, :cond_10

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-eqz v11, :cond_10

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    :cond_10
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_11

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-ge v11, v12, :cond_11

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    :cond_11
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-gez v11, :cond_12

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-ne v11, v2, :cond_12

    const/4 v11, 0x0

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    :cond_12
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-eqz v11, :cond_22

    if-nez p1, :cond_22

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkitsec/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    new-instance v7, Landroid/webkitsec/WebViewCore$ViewState;

    invoke-direct {v7}, Landroid/webkitsec/WebViewCore$ViewState;-><init>()V

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000

    div-float/2addr v11, v12

    iput v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mMinScale:F

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000

    div-float/2addr v11, v12

    iput v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mMaxScale:F

    iput v0, v7, Landroid/webkitsec/WebViewCore$ViewState;->mDefaultScale:F

    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mMobileSite:Z

    const/4 v11, 0x0

    iput v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mScrollX:I

    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x6d

    invoke-static {v11, v12, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_13
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_14

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    const/16 v12, 0x32

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    :cond_14
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_6

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    const/16 v12, 0xc8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    goto/16 :goto_1

    :cond_15
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-lez v11, :cond_7

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    int-to-float v12, v12

    div-float v0, v11, v12

    const/high16 v11, 0x42c80000

    mul-float/2addr v11, v0

    float-to-int v11, v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000

    div-float v0, v11, v12

    goto/16 :goto_2

    :cond_16
    const-string v11, "jp.co.nttdocomo.carriermail"

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_17

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    goto/16 :goto_3

    :cond_17
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-lez v11, :cond_9

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    int-to-float v12, v12

    div-float v0, v11, v12

    goto/16 :goto_3

    :cond_18
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_20

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v11, :cond_1c

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v11

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/16 v12, 0x64

    if-eq v11, v12, :cond_1c

    const/4 v11, -0x1

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    if-ne v11, v12, :cond_1c

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkitsec/WebSettingsClassic;->getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;

    move-result-object v12

    iget v12, v12, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    int-to-float v12, v12

    div-float v0, v11, v12

    :cond_19
    :goto_4
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mPrevAdjust:F

    cmpl-float v11, v0, v11

    if-nez v11, :cond_1a

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v11

    cmpl-float v11, v0, v11

    if-eqz v11, :cond_1b

    :cond_1a
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x87

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    iput v0, p0, Landroid/webkitsec/WebViewCore;->mPrevAdjust:F

    goto/16 :goto_3

    :cond_1c
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v11, :cond_19

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/lang/String;

    const-string v12, "com.android.browser"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-gtz v11, :cond_1d

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1e

    :cond_1d
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkitsec/WebSettingsClassic;->getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;

    move-result-object v12

    iget v12, v12, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    int-to-float v12, v12

    div-float v0, v11, v12

    :cond_1e
    :goto_5
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    goto :goto_4

    :cond_1f
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v0

    goto :goto_5

    :cond_20
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-lez v11, :cond_21

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkitsec/WebSettingsClassic;->getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;

    move-result-object v13

    iget v13, v13, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    mul-int/2addr v12, v13

    int-to-float v12, v12

    div-float v0, v11, v12

    goto/16 :goto_4

    :cond_21
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-nez v11, :cond_19

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    const/high16 v11, 0x42c80000

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkitsec/WebSettingsClassic;->getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;

    move-result-object v12

    iget v12, v12, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    int-to-float v12, v12

    div-float v0, v11, v12

    goto/16 :goto_4

    :cond_22
    iget v8, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    if-nez v8, :cond_24

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v9

    int-to-float v11, v9

    div-float/2addr v11, v0

    float-to-int v8, v11

    if-nez v8, :cond_23

    :cond_23
    :goto_6
    new-instance v11, Landroid/webkitsec/WebViewCore$ViewState;

    invoke-direct {v11}, Landroid/webkitsec/WebViewCore$ViewState;-><init>()V

    iput-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    int-to-float v12, v12

    const/high16 v13, 0x42c80000

    div-float/2addr v12, v13

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mMinScale:F

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    int-to-float v12, v12

    const/high16 v13, 0x42c80000

    div-float/2addr v12, v13

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mMaxScale:F

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkitsec/WebViewCore$ViewState;->mDefaultScale:F

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mScrollX:I

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mScrollY:I

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    if-nez v11, :cond_25

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    if-nez v11, :cond_25

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    if-eqz v11, :cond_25

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v11}, Landroid/webkitsec/BrowserFrame;->getShouldStartScrolledRight()Z

    move-result v11

    if-eqz v11, :cond_25

    const/4 v11, 0x1

    :goto_7
    iput-boolean v11, v12, Landroid/webkitsec/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-nez v11, :cond_26

    const/4 v11, 0x1

    :goto_8
    iput-boolean v11, v12, Landroid/webkitsec/WebViewCore$ViewState;->mMobileSite:Z

    iget-boolean v11, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    if-eqz v11, :cond_28

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mIsRestored:Z

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mRestoredScale:F

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_27

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_9
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v11, v11, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v11, :cond_2c

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkitsec/WebViewClassic;->mLastHeightSent:I

    new-instance v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkitsec/WebViewClassic$ViewSizeData;-><init>()V

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v11, v11, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    const/4 v11, 0x0

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeight:I

    iget v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    const/high16 v11, -0x40800000

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    const/4 v11, 0x0

    iput-boolean v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    const/4 v11, 0x0

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorY:I

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorX:I

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/16 v12, 0x69

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v11, v12}, Landroid/webkitsec/WebViewCore$EventHub;->access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v12, 0x0

    const/16 v13, 0x69

    invoke-static {v12, v13, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v11, v12}, Landroid/webkitsec/WebViewCore$EventHub;->access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_24
    int-to-float v11, v8

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto/16 :goto_6

    :cond_25
    const/4 v11, 0x0

    goto :goto_7

    :cond_26
    const/4 v11, 0x0

    goto :goto_8

    :cond_27
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, v12, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    goto :goto_9

    :cond_28
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_29

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v13, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    int-to-float v13, v13

    const/high16 v14, 0x42c80000

    div-float/2addr v13, v14

    iput v13, v12, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    iput v13, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    goto :goto_9

    :cond_29
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-lez v11, :cond_2a

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-ge v11, v9, :cond_2a

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v11

    if-nez v11, :cond_2a

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    int-to-float v13, v9

    iget v14, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    iput v13, v12, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    iput v13, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_9

    :cond_2a
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_9

    :cond_2b
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_9

    :cond_2c
    if-nez v8, :cond_2d

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    goto/16 :goto_0

    :cond_2d
    new-instance v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkitsec/WebViewClassic$ViewSizeData;-><init>()V

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v5, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-nez v11, :cond_30

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v5, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    int-to-float v11, v9

    div-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/webkitsec/WebViewCore;->calculateWindowWidth(I)I

    move-result v10

    int-to-float v11, v9

    int-to-float v12, v10

    div-float/2addr v11, v12

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v11

    if-nez v11, :cond_2e

    iget v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    :cond_2e
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v11

    if-eqz v11, :cond_2f

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v13, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic;->computeReadingLevelScale(F)F

    move-result v12

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    :cond_2f
    :goto_a
    int-to-float v11, v9

    iget v12, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    if-nez v11, :cond_31

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    :goto_b
    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeight:I

    int-to-float v11, v9

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, v12, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    const/4 v11, 0x0

    iput-boolean v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    const/4 v11, 0x0

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorY:I

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorX:I

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/16 v12, 0x69

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v11, v12}, Landroid/webkitsec/WebViewCore$EventHub;->access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewCore;->viewSizeChanged(Landroid/webkitsec/WebViewClassic$ViewSizeData;)V

    goto/16 :goto_0

    :cond_30
    iput v5, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    goto :goto_a

    :cond_31
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    int-to-float v11, v11

    iget v12, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    int-to-float v12, v8

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    goto :goto_b
.end method

.method private showFullScreenPlugin(Landroid/webkitsec/ViewManager$ChildView;II)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p1, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFF)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/webkitsec/WebViewCore$ShowRectData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$ShowRectData;-><init>()V

    iput p1, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mLeft:I

    iput p2, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mTop:I

    iput p3, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mWidth:I

    iput p4, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mHeight:I

    iput p5, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mContentWidth:I

    iput p6, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mContentHeight:I

    iput p7, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mXPercentInDoc:F

    iput p8, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mXPercentInView:F

    iput p9, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mYPercentInDoc:F

    iput p10, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mYPercentInView:F

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private updateSurface(Landroid/webkitsec/ViewManager$ChildView;IIII)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkitsec/ViewManager$ChildView;->attachView(IIII)V

    return-void
.end method

.method private updateTextSelection(IIIII)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-direct {p0, p2, p3, p5}, Landroid/webkitsec/WebViewCore;->createTextSelection(III)Landroid/webkitsec/WebViewCore$TextSelectionData;

    move-result-object v2

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private updateTextSelectionStartAndEnd(IIIIILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/webkitsec/WebViewCore$TextInputData;

    invoke-direct {v0, p2, p3, p5, p6}, Landroid/webkitsec/WebViewCore$TextInputData;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xb5

    invoke-static {v1, v2, p1, p4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private updateTextSizeAndScroll(IIIII)V
    .locals 5

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    neg-int v1, p4

    neg-int v2, p5

    sub-int v3, p2, p4

    sub-int v4, p3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x92

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private updateTextfield(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-static {v0, v1, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private updateViewport()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->setupViewport(Z)V

    return-void
.end method

.method private viewSizeChanged(Landroid/webkitsec/WebViewClassic$ViewSizeData;)V
    .locals 18

    move-object/from16 v0, p1

    iget v7, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeight:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    if-nez v7, :cond_1

    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "skip viewSizeChanged as w is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/webkitsec/WebViewCore;->calculateWindowWidth(I)I

    move-result v3

    move v4, v12

    if-eq v3, v7, :cond_2

    move-object/from16 v0, p1

    iget v14, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeightWidthRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-lez v1, :cond_6

    move/from16 v17, v14

    :goto_1
    int-to-float v1, v3

    mul-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    if-lez v1, :cond_7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorX:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorY:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Landroid/webkitsec/WebViewCore;->nativeSetSize(IIIIFIIIIZ)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    if-nez v1, :cond_8

    const/4 v15, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    if-eq v1, v7, :cond_3

    if-eqz v16, :cond_3

    const-string v1, "com.android.email"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    instance-of v1, v1, Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewCore;->nativeContentInvalidateAll(I)V

    :cond_3
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewScale:F

    if-eqz v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->contentDraw()V

    :cond_4
    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    instance-of v1, v1, Landroid/webkitsec/HtmlComposerView;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v13

    check-cast v13, Landroid/webkitsec/HtmlComposerView;

    const/4 v1, 0x1

    iget-boolean v2, v13, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->webkitRotationActionOnImage()V

    goto/16 :goto_0

    :cond_6
    int-to-float v1, v12

    int-to-float v2, v7

    div-float v17, v1, v2

    goto/16 :goto_1

    :cond_7
    move v8, v12

    goto/16 :goto_2

    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_3
.end method

.method private webkitActionBarDraw()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xa1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private webkitDraw()V
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewCore;->m_drawWasSkipped:Z

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    new-instance v0, Landroid/webkitsec/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$DrawData;-><init>()V

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkitsec/WebViewCore;->nativeRecordContent(ILandroid/graphics/Point;)I

    move-result v1

    iput v1, v0, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$300(Landroid/webkitsec/WebViewCore$EventHub;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xa

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v1, v2, v3, v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$14700(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mLastDrawData:Landroid/webkitsec/WebViewCore$DrawData;

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->webkitDraw(Landroid/webkitsec/WebViewCore$DrawData;)V

    goto :goto_0
.end method

.method private webkitDraw(Landroid/webkitsec/WebViewCore$DrawData;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    iget v2, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    :goto_0
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewCore;->nativeGetContentMinPrefWidth(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/webkitsec/WebViewCore$DrawData;->mMinPrefWidth:I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput-object v0, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v0, :cond_2

    iput-boolean v4, p1, Landroid/webkitsec/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->pauseWebKitDraw()V

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    goto :goto_0
.end method

.method private webkitRotationActionOnImage()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private webkitSelectionControlBT()V
    .locals 9

    const/16 v8, 0x9d

    new-instance v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-direct {v7}, Landroid/webkitsec/WebViewCore$SelectionCopiedData;-><init>()V

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget-object v2, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v3, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v4, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v5, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewCore;->nativeRecordSelectionCopiedData(ILandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webcore"

    const-string/jumbo v1, "webkitSelctionControlBT Selection unable to select"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v8, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private webkitSelectionControlDraw(I)V
    .locals 12

    const/4 v11, 0x0

    const/16 v2, 0x2c7

    const/16 v10, 0x9b

    const/4 v9, 0x0

    new-instance v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-direct {v7}, Landroid/webkitsec/WebViewCore$SelectionCopiedData;-><init>()V

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$900(Landroid/webkitsec/WebViewCore$EventHub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$1000(Landroid/webkitsec/WebViewCore$EventHub;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$1000(Landroid/webkitsec/WebViewCore$EventHub;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget-object v2, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v3, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v4, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v5, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewCore;->nativeRecordSelectionCopiedData(ILandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "webcore"

    const-string/jumbo v1, "webkitSelctionControlDraw Selection unable to select"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionGranularity(I)I

    move-result v0

    iput v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    iput p1, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    iget v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionMultiColInfo(I)Z

    move-result v0

    iput-boolean v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->isMulticol:Z

    :goto_1
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v8}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v10, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iput-boolean v9, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->isMulticol:Z

    goto :goto_1
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkitsec/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method clearContent()V
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeClearContent(I)V

    return-void
.end method

.method contentDraw()V
    .locals 3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkitsec/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v1, v0, :cond_5

    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    :cond_4
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_6

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x1

    # setter for: Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0, v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$302(Landroid/webkitsec/WebViewCore$EventHub;Z)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$15000(Landroid/webkitsec/WebViewCore$EventHub;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected enterFullscreenForVideoLayer(ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkitsec/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkitsec/WebViewCore$1;-><init>(Landroid/webkitsec/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkitsec/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkitsec/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method protected exitFullscreenVideo()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x88

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public extractSmartClipData(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 5

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkitsec/WebViewCore;->nativeExtractSmartClipData(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extractSmartClipDataAsMarkup(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 5

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkitsec/WebViewCore;->nativeExtractSmartClipDataAsMarkup(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v1, Landroid/webkitsec/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebViewCore$4;-><init>(Landroid/webkitsec/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkitsec/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/GeolocationPermissions$Callback;)V

    return-void
.end method

.method declared-synchronized getBrowserFrame()Landroid/webkitsec/BrowserFrame;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDeviceMotionService()Landroid/webkitsec/DeviceMotionService;
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionService:Landroid/webkitsec/DeviceMotionService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/DeviceMotionService;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/DeviceMotionService;-><init>(Landroid/webkitsec/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionService:Landroid/webkitsec/DeviceMotionService;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionService:Landroid/webkitsec/DeviceMotionService;

    return-object v0
.end method

.method protected getDeviceOrientationService()Landroid/webkitsec/DeviceOrientationService;
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceOrientationService:Landroid/webkitsec/DeviceOrientationService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/DeviceOrientationService;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/DeviceOrientationService;-><init>(Landroid/webkitsec/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceOrientationService:Landroid/webkitsec/DeviceOrientationService;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceOrientationService:Landroid/webkitsec/DeviceOrientationService;

    return-object v0
.end method

.method public getInputDispatcherCallbacks()Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    return-object v0
.end method

.method public declared-synchronized getSelectedText()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedText(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSettings()Landroid/webkitsec/WebSettingsClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeGetWebFeedLinks(I)[Landroid/webkitsec/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkitsec/WebView;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    return-object v0
.end method

.method getWebViewClassic()Landroid/webkitsec/WebViewClassic;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method initializeSubwindow()V
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->initialize()V

    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public isDestroyPending()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$300(Landroid/webkitsec/WebViewCore$EventHub;)Z

    move-result v0

    return v0
.end method

.method public isEditableSupport()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method isMobileSite()Z
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected notificationManagerCancel(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onNotificationManagerCancelPrompt(I)V

    return-void
.end method

.method protected notificationManagershow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v5, Landroid/webkitsec/WebViewCore$6;

    invoke-direct {v5, p0}, Landroid/webkitsec/WebViewCore$6;-><init>(Landroid/webkitsec/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/CallbackProxy;->onNotificationManagershowPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/NotificationPermissions$Callback;)V

    return-void
.end method

.method protected notificationPermissionsHidePrompt()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onNotificationPermissionsHidePrompt()V

    return-void
.end method

.method protected notificationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v1, Landroid/webkitsec/WebViewCore$5;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebViewCore$5;-><init>(Landroid/webkitsec/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkitsec/CallbackProxy;->onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/NotificationPermissions$Callback;)V

    return-void
.end method

.method pauseWebKitDraw()V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

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

.method protected populateVisitedLinks()V
    .locals 2

    new-instance v0, Landroid/webkitsec/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewCore$3;-><init>(Landroid/webkitsec/WebViewCore;)V

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkitsec/CallbackProxy;->getVisitedHistory(Landroid/webkitsec/ValueCallback;)V

    return-void
.end method

.method protected printPage()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onPrintPage()V

    return-void
.end method

.method protected reachedMaxAppCacheSize(JJ)V
    .locals 6

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v5, Landroid/webkitsec/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkitsec/WebViewCore$2;-><init>(Landroid/webkitsec/WebViewCore;)V

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkitsec/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method removeMessages()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$14900(Landroid/webkitsec/WebViewCore$EventHub;)V

    return-void
.end method

.method removeMessages(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkitsec/WebViewCore$EventHub;->access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V

    return-void
.end method

.method resumeWebKitDraw()V
    .locals 4

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mBlockWebkitDraw:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_drawWasSkipped:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_drawWasSkipped:Z

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method sendMessage(I)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method public sendMessage(II)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method public sendMessage(III)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkitsec/WebViewCore$EventHub;->access$14700(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;J)V

    return-void
.end method

.method sendMessages(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkitsec/DeviceMotionAndOrientationManager;->setMockOrientation(ZDZDZD)V

    return-void
.end method

.method public setMockGeolocationError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/MockGeolocation;->setError(ILjava/lang/String;)V

    return-void
.end method

.method public setMockGeolocationPermission(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    invoke-virtual {v0, p1}, Landroid/webkitsec/MockGeolocation;->setPermission(Z)V

    return-void
.end method

.method public setMockGeolocationPosition(DDD)V
    .locals 7

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkitsec/MockGeolocation;->setPosition(DDD)V

    return-void
.end method

.method signalRepaintDone()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkitsec/WebViewCore;->mRepaintScheduled:Z

    return-void
.end method

.method stopLoading()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkitsec/BrowserFrame;->stopLoading()V

    :cond_0
    return-void
.end method
