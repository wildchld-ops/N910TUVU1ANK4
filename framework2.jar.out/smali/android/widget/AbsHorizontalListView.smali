.class public abstract Landroid/widget/AbsHorizontalListView;
.super Landroid/widget/AdapterView;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsHorizontalListView$HoverScrollHandler;,
        Landroid/widget/AbsHorizontalListView$RecycleBin;,
        Landroid/widget/AbsHorizontalListView$RecyclerListener;,
        Landroid/widget/AbsHorizontalListView$LayoutParams;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;,
        Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;,
        Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;,
        Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsHorizontalListView$PositionScroller;,
        Landroid/widget/AbsHorizontalListView$FlingRunnable;,
        Landroid/widget/AbsHorizontalListView$CheckForTap;,
        Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;,
        Landroid/widget/AbsHorizontalListView$CheckForLongPress;,
        Landroid/widget/AbsHorizontalListView$PerformClick;,
        Landroid/widget/AbsHorizontalListView$WindowRunnnable;,
        Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsHorizontalListView$SavedState;,
        Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsHorizontalListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsHorizontalListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private isHoveringUIEnabled:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mCurrentKeyCode:I

.field private mDVFSCookie:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/HorizontalFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field public mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverLeftAreaWidth_DP:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverRightAreaWidth:I

.field private mHoverRightAreaWidth_DP:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoveredOnEllipsizedText:Z

.field private mIsChildViewEnabled:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsPnePressed:Z

.field final mIsScrap:[Z

.field private mIsShiftkeyPressed:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

.field mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mOldAdapterItemCount:I

.field public mOldKeyCode:I

.field private mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollingCacheEnabled:Z

.field public mSecondPressedPoint:I

.field mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field public mTwPressItemListArray:[I

.field public mTwPressItemListIndex:I

.field private final mTwScrollAmount:I

.field private mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollProfilingStarted:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingProfilingStarted:Z

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    const/high16 v1, 0x3f800000

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    new-array v1, v6, [Z

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    const/16 v1, 0x19

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    const/16 v1, 0xa

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollAmount:I

    new-instance v1, Landroid/widget/AbsHorizontalListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$5;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-virtual {p0, v6}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    const-string v1, "AbsHorizontalListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v9, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollProfilingStarted:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mFlingProfilingStarted:Z

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    const/high16 v9, 0x3f800000

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    const/16 v9, 0xf

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    const/16 v9, 0x19

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    const/16 v9, 0x12c

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    const/16 v9, 0xa

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v9, 0x1f4

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollAmount:I

    new-instance v9, Landroid/widget/AbsHorizontalListView$5;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$5;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setStackFromBottom(Z)V

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->setTextFilterEnabled(Z)V

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setTranscriptMode(I)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setCacheColorHint(I)V

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V

    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->setSmoothScrollbarEnabled(Z)V

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setChoiceMode(I)V

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setFastScrollAlwaysVisible(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v9, :cond_1

    const-string v9, "AbsHorizontalListView"

    const-string v10, "Get MotionRecognitionManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "motion_recognition"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1002(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$CheckForLongPress;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1502(Landroid/widget/AbsHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsHorizontalListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsHorizontalListView;)Landroid/view/HapticPreDrawListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsHorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsHorizontalListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$FlingRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5300(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5400(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5500(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5600(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$5800(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$5902(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$6000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$6002(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$6100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$6200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$6300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$6400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$6502(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$6600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/AbsHorizontalListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$7002(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private clearScrollingCache()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsHorizontalListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$4;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10301ef

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10301f0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v2, v5, v0

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8

    sparse-switch p2, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    :goto_0
    sub-int v2, v0, v4

    sub-int v3, v1, v5

    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    goto :goto_0

    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v5, p0, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090139

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v10}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v10}, Landroid/widget/AbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->twEnableHorizontalScrollbar()V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mDensityScale:F

    :cond_1
    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_2

    move v0, v10

    :cond_2
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    :cond_3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAudioManager:Landroid/media/AudioManager;

    :cond_5
    const-class v6, Ldalvik/system/VMRuntime;

    :try_start_0
    const-string/jumbo v0, "pauseGc"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    const-string/jumbo v0, "resumeGc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101046e

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    :cond_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AbsHorizontalListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setFingerHovered(Z)V

    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setHovered(Z)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelectorDefault()Z

    move-result v10

    const/4 v3, 0x0

    if-gez v9, :cond_f

    if-nez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    :cond_12
    if-nez v10, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    return-void

    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    :goto_0
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->createScrollingCache()V

    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->flywheelTouch()V

    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    :cond_4
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    goto :goto_0

    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x4e8e

    invoke-virtual {p0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_6
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v4, :cond_7

    new-instance v4, Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-direct {v4, p0}, Landroid/widget/AbsHorizontalListView$CheckForTap;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :cond_7
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    :cond_0
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, v2}, Landroid/widget/AbsHorizontalListView;->startScrollIfNeeded(I)Z

    move-result v4

    if-nez v4, :cond_2

    int-to-float v4, v2

    int-to-float v5, v3

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    goto :goto_1

    :pswitch_2
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_5

    iput-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    :cond_5
    :pswitch_3
    invoke-direct {p0, v2}, Landroid/widget/AbsHorizontalListView;->scrollIfNeeded(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_8

    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    new-instance v17, Landroid/widget/AbsHorizontalListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$PerformClick;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    iput v13, v14, Landroid/widget/AbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->rememberWindowAttachCount()V

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    new-instance v17, Landroid/widget/AbsHorizontalListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsHorizontalListView$3;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Landroid/widget/AbsHorizontalListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    :cond_a
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual {v14}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    :cond_d
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_14

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_e

    if-lt v9, v6, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_e

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_12

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    new-instance v17, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    :cond_11
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    :cond_12
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    goto/16 :goto_0

    :cond_14
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    new-instance v17, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDensityScale:F

    const/high16 v5, 0x41a00000

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 3

    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    :cond_2
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 30

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    sub-int v29, p1, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    sub-int v16, v29, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    sub-int v17, p1, v3

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    const-string v3, "AbsHorizontalListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x80000

    and-int/2addr v3, v5

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    if-le v3, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-eqz v28, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    if-ltz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v18, v3, v5

    :goto_1
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v21

    :cond_2
    const/4 v15, 0x0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v15

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_9

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    if-eqz v15, :cond_8

    move/from16 v0, v17

    neg-int v3, v0

    sub-int v5, v22, v21

    sub-int v4, v3, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mScrollX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v3, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v27

    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v26, v0

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-lez v29, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    if-nez v3, :cond_6

    const/4 v3, 0x6

    move/from16 v0, v26

    if-eq v0, v3, :cond_6

    const/16 v3, 0x4eac

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_8
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastX:I

    :cond_a
    :goto_3
    return-void

    :cond_b
    move/from16 v17, v16

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v18, v3, 0x2

    goto/16 :goto_1

    :cond_d
    if-gez v29, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    sub-int v24, v25, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_18

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    if-nez v3, :cond_10

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mDirection:I

    :cond_10
    move/from16 v0, v17

    neg-int v6, v0

    if-gez v24, :cond_11

    if-gez v25, :cond_12

    :cond_11
    if-lez v24, :cond_19

    if-gtz v25, :cond_19

    :cond_12
    move/from16 v0, v25

    neg-int v6, v0

    add-int v17, v17, v6

    :goto_5
    if-eqz v6, :cond_15

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/View;->mScrollX:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v27

    if-eqz v27, :cond_13

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_15

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    if-lez v29, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_15
    :goto_6
    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->findClosestMotionRow(I)I

    move-result v19

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v19, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_1c

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    :cond_17
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mDirection:I

    goto/16 :goto_3

    :cond_18
    const/16 v23, -0x1

    goto/16 :goto_4

    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_1a
    if-gez v29, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_1c
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setAlwaysShow(Z)V

    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/HorizontalFastScroller;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalFastScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->positionPopup()V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    sub-int v1, p1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v7, p0, Landroid/view/View;->mScrollX:I

    if-eqz v7, :cond_2

    move v5, v9

    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->createScrollingCache()V

    if-eqz v5, :cond_3

    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    :goto_1
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    if-le v7, v9, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v5, v8

    goto :goto_0

    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->scrollIfNeeded(I)V

    move v7, v9

    :goto_4
    return v7

    :cond_7
    move v7, v8

    goto :goto_4
.end method

.method private unregisterMotionListener()V
    .locals 2

    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v4, v2, v3

    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    check-cast v0, Landroid/widget/Checkable;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_0

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addToPressItemListArray(II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_2

    const/4 v2, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_5
    if-ge p1, p2, :cond_9

    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    if-nez v2, :cond_8

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    :cond_8
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    if-le p1, p2, :cond_d

    sub-int v4, p1, p2

    add-int/lit8 v0, v4, 0x1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    if-nez v2, :cond_c

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    :cond_c
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_8
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_f

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_e

    const/4 v2, 0x1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    if-nez v2, :cond_4

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    goto :goto_3
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public canScrollList(I)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-lez p1, :cond_3

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v4, v1, v0

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    mul-int/lit8 v1, v0, 0x64

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    const/4 v7, 0x0

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    iget-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    move/from16 v15, v16

    :goto_1
    if-ge v15, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    :cond_0
    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v12, "cropUri"

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    :goto_0
    return v12

    :cond_1
    const/4 v12, 0x1

    if-ne v0, v12, :cond_4

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gtz v12, :cond_2

    const/4 v12, 0x1

    const/high16 v13, 0x41c80000

    iget-object v14, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f000000

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    :cond_5
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v12, v7

    iget v13, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v12, v13, :cond_f

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_7

    if-lez v7, :cond_7

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, Landroid/view/View;->mRight:I

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v13

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_10

    :cond_6
    const/4 v2, 0x1

    :cond_7
    :goto_2
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v12, :cond_11

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_8

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_12

    const/4 v1, 0x1

    :cond_8
    :goto_4
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-le v10, v12, :cond_9

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_a

    :cond_9
    if-lez v11, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v12

    if-gt v11, v12, :cond_a

    if-nez v1, :cond_13

    if-nez v2, :cond_13

    :cond_a
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-eqz v12, :cond_b

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_c

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    if-eqz v12, :cond_d

    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    :cond_d
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    const/4 v12, 0x2

    if-ne v0, v12, :cond_e

    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_e

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v2, 0x0

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    :cond_12
    const/4 v1, 0x0

    goto :goto_4

    :cond_13
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-nez v12, :cond_14

    new-instance v12, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    :cond_14
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    :cond_15
    packed-switch v0, :pswitch_data_0

    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    :pswitch_0
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-ltz v10, :cond_17

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_17

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    const/4 v12, 0x2

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_17
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_16

    if-gt v10, v6, :cond_16

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :pswitch_1
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_18

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    :cond_18
    if-ltz v10, :cond_19

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_19

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    const/4 v12, 0x2

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :cond_19
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_16

    if-gt v10, v6, :cond_16

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :pswitch_2
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_1a

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    :cond_1a
    :pswitch_3
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1b
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v2, 0x0

    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pen_hovering"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pen_hovering_list_scroll"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    :goto_1
    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    new-instance v19, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    if-eqz v13, :cond_2

    if-nez v12, :cond_5

    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    :goto_2
    return v19

    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v19, v0

    if-gtz v19, :cond_7

    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/high16 v20, 0x3f000000

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/high16 v20, 0x3f000000

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_a

    if-lez v8, :cond_a

    add-int/lit8 v19, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    :cond_9
    const/4 v4, 0x1

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-lez v19, :cond_15

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    if-lez v19, :cond_b

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    const/4 v3, 0x1

    :cond_b
    :goto_6
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    :cond_c
    if-lez v18, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    if-nez v3, :cond_d

    if-eqz v4, :cond_f

    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    :cond_e
    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isLockScreenMode()Z

    move-result v19

    if-eqz v19, :cond_18

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_0
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    move/from16 v19, v0

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_1
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_12
    :goto_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v9

    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_1
    move-exception v9

    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    :cond_1a
    :goto_a
    :pswitch_0
    const/16 v19, 0x1

    goto/16 :goto_2

    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-ltz v17, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    const/16 v19, 0x11

    const/16 v20, -0x1

    :try_start_2
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    :catch_2
    move-exception v9

    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1a

    move/from16 v0, v17

    if-gt v0, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    const/16 v19, 0xd

    const/16 v20, -0x1

    :try_start_3
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    :catch_3
    move-exception v9

    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_1c

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    :cond_1c
    if-ltz v17, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    :cond_1d
    const/16 v19, 0x11

    const/16 v20, -0x1

    :try_start_4
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1e
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    :catch_4
    move-exception v9

    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1a

    move/from16 v0, v17

    if-gt v0, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    :cond_20
    const/16 v19, 0xd

    const/16 v20, -0x1

    :try_start_5
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_21
    :goto_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    :catch_5
    move-exception v9

    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    :cond_22
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_6
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_f
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    :cond_23
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    :catch_6
    move-exception v9

    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_3

    iget v5, p0, Landroid/view/View;->mScrollX:I

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    add-int v6, v8, v9

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    add-int v0, v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    neg-int v8, v3

    add-int v2, v8, v6

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v8, 0x43870000

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v6, v1}, Landroid/widget/EdgeEffect;->setPosition(II)V

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v10}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    add-int v6, v8, v9

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    add-int v0, v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v2, v6

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v1, v8

    const/high16 v8, 0x42b40000

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v3, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    add-int v9, v2, v3

    invoke-virtual {v8, v1, v9}, Landroid/widget/EdgeEffect;->setPosition(II)V

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterMotionListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findClosestMotionRow(I)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    :cond_1
    return-object v3

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    new-array v3, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v1}, Landroid/widget/HorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    const/high16 v1, 0x3f800000

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    const/high16 v1, 0x3f800000

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 15

    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    :cond_0
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->confirmCheckedPositionsById()V

    :cond_1
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clearTransientStateViews()V

    if-lez v1, :cond_f

    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_8

    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    :goto_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_6

    if-gt v4, v5, :cond_6

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_7
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-lt v6, v1, :cond_9

    add-int/lit8 v6, v1, -0x1

    :cond_9
    if-gez v6, :cond_a

    const/4 v6, 0x0

    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ltz v7, :cond_d

    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v6

    if-ltz v6, :cond_8

    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ne v7, v6, :cond_8

    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_2

    :pswitch_1
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ltz v7, :cond_f

    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    :cond_e
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    :cond_f
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    iput v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput v13, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalFastScroller;->onScroll(III)V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScroll(Landroid/widget/AbsHorizontalListView;III)V

    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 8

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v1, 0x1

    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string v6, "AbsHorizontalListView"

    const-string v7, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwHorizontalScrollBarHidden()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTwUsingAdapterView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_6

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    new-instance v5, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    :cond_5
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->rememberWindowAttachCount()V

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 10

    const-wide/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v5, "obtainView"

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    aput-boolean v6, p2, v6

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_a

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_3
    if-eq v0, v2, :cond_8

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_4
    :goto_1
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    :goto_2
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    if-nez v4, :cond_6

    new-instance v4, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move-object v4, v0

    goto :goto_0

    :cond_8
    aput-boolean v7, p2, v6

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    :cond_a
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_b
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    goto :goto_2

    :cond_d
    move-object v1, v3

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    :cond_2
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Landroid/widget/AbsHorizontalListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    const/4 v0, -0x1

    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_2

    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    move v0, v2

    :cond_2
    if-ltz v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    const-string v1, "AbsHorizontalListView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_5
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_8
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-eq v1, v4, :cond_9

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    :cond_9
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    return-void

    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChangedForAccessibility()V

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    :goto_0
    return v7

    :cond_2
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v9, 0x6

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-ne v3, v9, :cond_5

    :cond_4
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    move v7, v8

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    if-eq v3, v11, :cond_6

    if-ltz v1, :cond_6

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    :cond_6
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initOrResetVelocityTracker()V

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-ne v3, v11, :cond_1

    move v7, v8

    goto :goto_0

    :pswitch_2
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v10, :cond_7

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v5}, Landroid/widget/AbsHorizontalListView;->startScrollIfNeeded(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    goto/16 :goto_0

    :pswitch_4
    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v5, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :sswitch_0
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    if-nez v4, :cond_6

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_5

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    :cond_5
    :goto_3
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    goto :goto_1

    :cond_6
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_3

    :sswitch_1
    iput-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    :sswitch_2
    iput-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    goto :goto_1

    :sswitch_3
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->markChildrenDirty()V

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v3, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalFastScroller;->onItemCountChanged(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mOverscrollMax:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->useDefaultSelector()V

    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v2, v4, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    iput p1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Landroid/widget/AbsHorizontalListView$SavedState;

    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    iget-wide v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mSyncMode:I

    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setFilterText(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    iget-boolean v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    return-void

    :cond_4
    iget-wide v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    iput v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getTwHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    new-instance v8, Landroid/widget/AbsHorizontalListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsHorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    if-eqz v12, :cond_1

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v6

    iput-wide v6, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v12, :cond_2

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    :cond_2
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    :cond_3
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_9

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v12, :cond_7

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v2, v12, :cond_6

    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    :cond_6
    iput v2, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    goto/16 :goto_2

    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    :cond_9
    iput-object v5, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    :cond_a
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/HorizontalFastScroller;->onSizeChanged(IIII)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v4}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v10, v11, v9}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move v8, v9

    :cond_2
    :goto_0
    return v8

    :cond_3
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/HorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v8, v9

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v8, v9

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->onTouchCancel()V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    if-ltz v5, :cond_6

    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    :cond_6
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    goto :goto_1

    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v6, v10

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    if-ltz v5, :cond_7

    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    :cond_7
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    :cond_4
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :goto_0
    if-nez p1, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_0
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_1

    iput v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    if-ne v0, v2, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    if-nez v3, :cond_6

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    :cond_6
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 10

    const/16 v3, 0x4e84

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v2, :cond_11

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_7

    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->performHapticFeedback()Z

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_b

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_8

    move v5, v0

    :goto_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v5, :cond_9

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    :goto_2
    if-eqz v5, :cond_a

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    :goto_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    const/4 v7, 0x0

    :cond_3
    const/4 v6, 0x1

    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->updateOnScreenCheckedViews()V

    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v8, v0

    :cond_6
    return v8

    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_8
    move v5, v1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2

    :cond_a
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    :cond_b
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v2, v0, :cond_4

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_e

    move v5, v0

    :goto_6
    if-eqz v5, :cond_f

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_c
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    :cond_d
    :goto_7
    const/4 v6, 0x1

    goto :goto_4

    :cond_e
    move v5, v1

    goto :goto_6

    :cond_f
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_10
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_7

    :cond_11
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsHorizontalListView;->setItemChecked(IZ)V

    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_3
    if-eqz v6, :cond_0

    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7

    const/4 v6, -0x1

    if-eq p1, v6, :cond_0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v2, p2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->positionSelector(IIII)V

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    # getter for: Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$4800(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->registerMotionListener()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setMotionEvent(Z)V

    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-eq p1, v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroid/view/View;->mTwScrollingByScrollbar:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_6

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AbsListScroll"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_5
    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    :cond_6
    if-nez p1, :cond_9

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    :try_start_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    :cond_7
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_8
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    :cond_9
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    :cond_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetList()V

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    :cond_0
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public resetPressItemListArray()V
    .locals 4

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    const/4 v10, 0x1

    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    move v13, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v12, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v13

    if-lt v13, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_c

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsHorizontalListView;->setSelectionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    if-ltz v13, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_3
    if-le v14, v4, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto :goto_1

    :cond_4
    if-ge v15, v5, :cond_8

    move v13, v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    if-nez v6, :cond_6

    move v12, v8

    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    :cond_6
    if-lt v8, v3, :cond_7

    add-int v13, v5, v6

    move v12, v8

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v10, 0x0

    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    add-int/lit8 v6, v2, -0x1

    :goto_4
    if-ltz v6, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    move v12, v8

    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    :cond_a
    if-gt v9, v4, :cond_b

    add-int v13, v5, v6

    move v12, v8

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_c
    const/4 v13, -0x1

    goto :goto_2

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2

    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3

    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 12

    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_1
    if-eqz v3, :cond_0

    invoke-direct {p0, v8}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    move-object v1, p3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    :cond_3
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_4
    const/4 v2, 0x1

    :cond_5
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v2, 0x1

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    goto :goto_1

    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    :cond_8
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    :cond_9
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    :cond_b
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    :cond_3
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->setCacheColorHint(I)V

    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2

    const/4 v1, 0x0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->clearChoices()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/widget/AbsHorizontalListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$2;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/AbsHorizontalListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$1;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->positionPopup()V

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    # getter for: Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->access$1800(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_4

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsHorizontalListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_4
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v1, v5, :cond_c

    :cond_5
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_a

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_6
    :goto_1
    if-eq v6, p2, :cond_7

    if-eqz p2, :cond_b

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    :cond_7
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_8
    :goto_3
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    if-nez v0, :cond_9

    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    :cond_9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_b
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_2

    :cond_c
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_10

    move v7, v8

    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v7, :cond_e

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_e
    if-eqz p2, :cond_11

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v7, :cond_f

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_f
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    :cond_10
    move v7, v0

    goto :goto_4

    :cond_11
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_12
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsHorizontalListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    iput p2, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void

    :cond_1
    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsHorizontalListView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    # setter for: Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$4802(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    return-void
.end method

.method public setTwHorizontalScrollbarPosition(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setTwHorizontalScrollbarPosition(I)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    :cond_0
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    :goto_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

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

.method public showContextMenu(FFI)Z
    .locals 6

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v5, :cond_0

    new-instance v5, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int v2, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v3, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ne v5, v4, :cond_4

    if-lez p1, :cond_4

    :cond_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10

    const/high16 v9, 0x3f400000

    const/4 v2, -0x1

    if-gez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    const/high16 v6, 0x3f400000

    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    :cond_2
    return-void

    :cond_3
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 32

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    const/16 v30, 0x1

    :goto_0
    return v30

    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/lit8 v30, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    sub-int v26, v10, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v12, v30, v11

    sub-int v27, v19, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    if-gez p1, :cond_3

    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-gez p2, :cond_4

    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v14, :cond_5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v30, v13, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    :goto_3
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    :goto_4
    if-nez v14, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v13, v0, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    :goto_5
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v4, 0x1

    :goto_6
    if-nez v5, :cond_2

    if-eqz v4, :cond_a

    :cond_2
    if-eqz p2, :cond_9

    const/16 v30, 0x1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_a
    if-gez p2, :cond_14

    const/16 v25, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeaderViewsCount()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getFooterViewsCount()I

    move-result v31

    sub-int v15, v30, v31

    const/16 v28, 0x0

    const/4 v9, 0x0

    const/16 v22, 0x1

    if-eqz v25, :cond_1b

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v20, v20, v30

    :cond_c
    const/16 v17, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v0, v7, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionViewNewLeft:I

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-lez v9, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/AbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->twOffsetChildrenLeftAndRight(I)V

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v26

    if-lt v0, v3, :cond_11

    move/from16 v0, v27

    if-ge v0, v3, :cond_12

    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->fillGap(Z)V

    :cond_12
    if-nez v18, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    :cond_13
    :goto_9
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v9, v9, 0x1

    add-int v23, v14, v17

    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_1a

    move/from16 v0, v23

    if-ge v0, v15, :cond_1a

    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_16

    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_19

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_17

    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_17
    const/16 v22, 0x0

    :cond_18
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v24, v30, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v24, v24, v30

    :cond_1c
    add-int/lit8 v17, v7, -0x1

    :goto_a
    if-ltz v17, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    move/from16 v28, v17

    add-int/lit8 v9, v9, 0x1

    add-int v23, v14, v17

    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_21

    move/from16 v0, v23

    if-ge v0, v15, :cond_21

    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_1d

    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_20

    if-eqz v22, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_1e
    const/16 v22, 0x0

    :cond_1f
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_21
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected twGetItemCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Landroid/widget/AdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v6

    :cond_0
    return v6
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return-void
.end method

.method public twSetSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 6

    const/16 v5, -0x1f4

    const/16 v4, 0x1f4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    new-instance v1, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v4, :cond_3

    if-lez p1, :cond_2

    :goto_0
    if-le p1, v4, :cond_3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    add-int/lit16 p1, p1, -0x1f4

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p1, v5, :cond_3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, -0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    add-int/lit16 p1, p1, 0x1f4

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterMotionListener()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setMotionEvent(Z)V

    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v0, v4

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_5

    move v0, v4

    :cond_0
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v1, v4

    :goto_3
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    iget v8, p0, Landroid/view/View;->mRight:I

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v1, v4

    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_1

    :cond_6
    move v6, v7

    goto :goto_2

    :cond_7
    move v1, v5

    goto :goto_3

    :cond_8
    move v1, v5

    goto :goto_4

    :cond_9
    move v5, v7

    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 4

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
