.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$8;,
        Landroid/widget/TextView$StylusEventListener;,
        Landroid/widget/TextView$TouchMonitorListener;,
        Landroid/widget/TextView$PenSelectVibrator;,
        Landroid/widget/TextView$MoreInfoHPW;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$IClipboardDataPasteEventImpl;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_TEXT:I = 0x2

.field private static final ACTION_INIT:I = 0x0

.field private static final ACTION_PASTE_TEXT:I = 0x3

.field private static final ACTION_PASTING:I = 0x6

.field private static final ACTION_REDOING:I = 0x5

.field private static final ACTION_TYPING_TEXT:I = 0x1

.field private static final ACTION_UNDOING:I = 0x4

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field public static final B_USE_HINT_LIGHT_FONT:Z

.field public static final B_USE_LIGHT_FONT:Z

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field public static final CLIPBOARD_ID:I = 0x5

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field public static final DICTIONARY_ID:I = 0x9

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field private static final HINT_TYPEFACE:I = 0x1

.field static final ID_CLIPBOARD:I = 0x10202c4

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_DELETE:I = 0x10202c8

.field static final ID_DICTIONARY:I = 0x10202c7

.field static final ID_MULTI_SELECT_ALL:I = 0x10202cb

.field static final ID_MULTI_SELECT_COPY:I = 0x10202cc

.field static final ID_MULTI_SELECT_DICTIONARY:I = 0x10202cd

.field static final ID_MULTI_SELECT_SHARE:I = 0x10202d0

.field static final ID_MULTI_SELECT_TRANSLATE:I = 0x10202ce

.field static final ID_PASTE:I = 0x1020022

.field static final ID_REDO:I = 0x10202ca

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x10202c6

.field static final ID_TRANSLATE:I = 0x10202c5

.field static final ID_UNDO:I = 0x10202c9

.field static final ID_WEBSEARCH:I = 0x102049f

.field static LAST_CUT_OR_COPY_TIME:J = 0x0L

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field private static final PRESS_TYPEFACE:I = 0x2

.field private static final SANS:I = 0x1

.field private static final SELECT_TYPEFACE:I = 0x3

.field private static final SERIF:I = 0x2

.field public static final SHARE_ID:I = 0x7

.field private static final SIGNED:I = 0x2

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field public static final TRANSLATE_ID:I = 0x6

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000

.field public static final WEBSEARCH_ID:I = 0x8

.field private static final emailPattern:Ljava/util/regex/Pattern;

.field private static mIsFindTargetView:Z

.field private static mLastHoveredTime:J

.field private static mLastHoveredView:Landroid/widget/TextView;

.field private static mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

.field private static mTargetView:Landroid/widget/TextView;

.field private static final urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final HOVER_INTERVAL:I

.field private TOUCH_DELTA:F

.field private fromResLock:Z

.field private mAllowTransformationLengthChange:Z

.field private mAssociatedCheckBoxAnimationValue:F

.field private mAssociatedCheckBoxChecked:Z

.field private mAttachedWindow:Z

.field private mAutoLinkMask:I

.field private mBidiFormat:Landroid/text/BidiFormatter;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mCanTextMultiSelection:Z

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mChangedSelectionBySIP:Z

.field private mChangedSize:I

.field private mChangedText:Z

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mClipboardDataFormat:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCurTextTypeface:Landroid/graphics/Typeface;

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field private mDisplayText:Ljava/lang/CharSequence;

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsisKeywordCount:I

.field private mEllipsisKeywordStart:I

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnableHoverPreview:Z

.field private mEnableMultiSelection:Z

.field private mEnableUndoRedo:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mGravity:I

.field private mHideSoftInput:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHintTextTypeface:Landroid/graphics/Typeface;

.field private mHorizontallyScrolling:Z

.field private mHoverEnterTime:J

.field private mHoverExitTime:J

.field private mHoveredSpan:Ljava/lang/Object;

.field private mIgnoreAccessibility:Z

.field private mIncludePad:Z

.field mIsTouchDown:Z

.field private mKeycodeDpadCenterStatus:Z

.field private mLastAction:I

.field private mLastCurPosEnd:I

.field private mLastCurPosStart:I

.field private mLastKeyCode:I

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mMultiHighlightColor:I

.field private mMultiHighlightPaint:Landroid/graphics/Paint;

.field private mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field protected mOnDragResult:Z

.field protected mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

.field private mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

.field private mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

.field private mPreDrawRegistered:Z

.field private mPreText:Ljava/lang/CharSequence;

.field private mPressTextTypeface:Landroid/graphics/Typeface;

.field private mPretextCurPosEnd:I

.field private mPretextCurPosStart:I

.field private mPreventDefaultMovement:Z

.field mQuickPopupAddEventRes:I

.field mQuickPopupCloseRes:I

.field mQuickPopupCopyRes:I

.field mQuickPopupDictionaryRes:I

.field mQuickPopupDividerRes:I

.field mQuickPopupItemBackGroundRes:I

.field mQuickPopupScrapbookRes:I

.field mQuickPopupShareRes:I

.field mQuickPopupShowSelectedRes:I

.field mQuickPopupWindowBackgroundRes:I

.field private mRedoText:Ljava/lang/CharSequence;

.field private mRestartMarquee:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectTextTypeface:Landroid/graphics/Typeface;

.field private mSelectall:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSkipSaveTypeface:Z

.field private mSkipUpdateDisplayText:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mStrikeThroughPaint:Landroid/graphics/Paint;

.field private mStringName:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditNewActionPopupBackGroundRes:I

.field mTextEditNewActionPopupClipboardRes:I

.field mTextEditNewActionPopupCopyRes:I

.field mTextEditNewActionPopupCutRes:I

.field mTextEditNewActionPopupDictionaryRes:I

.field mTextEditNewActionPopupDividerRes:I

.field mTextEditNewActionPopupPasteRes:I

.field mTextEditNewActionPopupSelectAllRes:I

.field mTextEditNewActionPopupShareRes:I

.field mTextEditNewActionPopupTranslateRes:I

.field mTextEditNewActionPopupWebSearchRes:I

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleLeftTopRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field mTextSelectHandleRightTopRes:I

.field private mTextStrikeThroughEnabled:Z

.field private mThemeIsDeviceDefault:Z

.field private mToast:Landroid/widget/Toast;

.field protected mToolType:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUndoText:Ljava/lang/CharSequence;

.field private mUseDisplayText:Z

.field private mUserSetTextScaleX:Z

.field private mWBMaxLength:I

.field private mWBTextBuffer:Ljava/lang/CharSequence;

.field private mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

.field private mhasMultiSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    new-array v1, v5, [I

    const v2, 0x101034d

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    const-string v1, "capuccino"

    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/widget/TextView;->B_USE_LIGHT_FONT:Z

    const-string v1, "latte"

    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/widget/TextView;->B_USE_HINT_LIGHT_FONT:Z

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sput-object v1, Landroid/widget/TextView;->urlPattern:Ljava/util/regex/Pattern;

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    sput-object v1, Landroid/widget/TextView;->emailPattern:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sput-object v4, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    sput-object v4, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    sput-object v4, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    sput-boolean v3, Landroid/widget/TextView;->mIsFindTargetView:Z

    const-wide/16 v1, 0x0

    sput-wide v1, Landroid/widget/TextView;->mLastHoveredTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 92
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mCurTextTypeface:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mHintTextTypeface:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPressTextTypeface:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mSelectTextTypeface:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mSkipSaveTypeface:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->fromResLock:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mAssociatedCheckBoxChecked:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mToolType:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mChangedText:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mChangedSize:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mIgnoreAccessibility:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mSelectall:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastLayoutDirection:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    sget-object v5, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mUseDisplayText:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mhasMultiSelection:Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mEnableHoverPreview:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mCanTextMultiSelection:Z

    const v5, -0x66ff8747

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMultiHighlightColor:I

    const/16 v5, 0x12c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->HOVER_INTERVAL:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v90, -0x1

    move-wide/from16 v0, v90

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    const-wide/16 v90, -0x1

    move-wide/from16 v0, v90

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    const/high16 v5, 0x41200000

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->TOUCH_DELTA:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-static {}, Lcom/samsung/android/penselect/PenSelectionController;->getInstance()Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    const v5, 0x800033

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mGravity:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mLinksClickable:Z

    const/high16 v5, 0x3f800000

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mSpacingAdd:F

    const v5, 0x7fffffff

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMaximum:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMinimum:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMinMode:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mOldMaximum:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mOldMaxMode:I

    const v5, 0x7fffffff

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mIncludePad:Z

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mDeferScroll:I

    sget-object v5, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    const v5, -0xb1511e

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mHighlightColor:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mClipboardDataFormat:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mOnDragResult:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mHideSoftInput:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mIsTouchDown:Z

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mWBMaxLength:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->getInstance()Landroid/widget/MultiSelectPopupWindow;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    const-string v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastAction:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastKeyCode:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastCurPosStart:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastCurPosEnd:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v29

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    new-instance v5, Landroid/text/TextPaint;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v64 .. v64}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    iput v11, v5, Landroid/text/TextPaint;->density:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v29

    iget v11, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v29

    iget v11, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v29

    iget v11, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v5, Landroid/text/TextPaint;->density:F

    const/high16 v11, 0x41200000

    mul-float/2addr v5, v11

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->TOUCH_DELTA:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/16 v82, 0x0

    const/16 v81, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0xf

    const/16 v45, 0x0

    const/16 v87, -0x1

    const/16 v79, -0x1

    const/16 v18, 0x0

    const/16 v76, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v63, 0x0

    const/16 v47, 0x0

    const/16 v61, 0x0

    const/16 v65, 0x0

    const/16 v48, -0x1

    const/16 v62, -0x1

    const/16 v66, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/16 v75, 0x0

    const/16 v73, 0x0

    const/16 v72, 0x0

    const/16 v74, 0x0

    const/16 v71, 0x0

    const/16 v70, 0x0

    const/16 v69, 0x0

    const/16 v68, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v86

    sget-object v5, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    const/4 v11, 0x0

    move-object/from16 v0, v86

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    const/16 v20, 0x0

    const/4 v5, 0x0

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v86

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v20

    :cond_0
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v54

    const/16 v49, 0x0

    :goto_0
    move/from16 v0, v49

    move/from16 v1, v54

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v20

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    :goto_1
    add-int/lit8 v49, v49, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v82

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v81

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v83

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v84

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v85

    goto :goto_1

    :pswitch_5
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v87

    goto :goto_1

    :pswitch_6
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto :goto_1

    :pswitch_7
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v79

    goto :goto_1

    :pswitch_8
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    goto :goto_1

    :pswitch_9
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v76

    goto :goto_1

    :pswitch_a
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    goto :goto_1

    :pswitch_b
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    goto :goto_1

    :pswitch_c
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v63

    goto :goto_1

    :pswitch_d
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v47

    goto :goto_1

    :pswitch_e
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v61

    goto/16 :goto_1

    :pswitch_10
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v62

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v65

    goto/16 :goto_1

    :pswitch_12
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v66

    goto/16 :goto_1

    :pswitch_13
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    goto/16 :goto_1

    :pswitch_14
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    goto/16 :goto_1

    :pswitch_15
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    goto/16 :goto_1

    :pswitch_16
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    goto/16 :goto_1

    :pswitch_17
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    goto/16 :goto_1

    :pswitch_18
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto/16 :goto_1

    :pswitch_19
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto/16 :goto_1

    :pswitch_1a
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto/16 :goto_1

    :pswitch_1b
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto/16 :goto_1

    :pswitch_1c
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_1

    :pswitch_1d
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v75

    goto/16 :goto_1

    :pswitch_1e
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v71

    goto/16 :goto_1

    :pswitch_1f
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v73

    goto/16 :goto_1

    :pswitch_20
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    goto/16 :goto_1

    :pswitch_21
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v74

    goto/16 :goto_1

    :pswitch_22
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v70

    goto/16 :goto_1

    :pswitch_23
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    goto/16 :goto_1

    :pswitch_24
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v69

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v41

    const/16 v50, 0x0

    const/16 v56, 0x0

    const/16 v30, 0x0

    const/16 v60, 0x0

    const/16 v23, 0x0

    const/16 v22, -0x1

    const/16 v25, 0x0

    const/16 v67, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v35, 0x0

    const/16 v31, 0x0

    const/16 v36, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v42, -0x1

    const/16 v77, 0x0

    const/16 v53, -0x1

    const-string v80, ""

    const/16 v78, -0x1

    const/16 v46, 0x0

    const/16 v58, 0x0

    const/16 v51, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->TextView:[I

    const/4 v11, 0x0

    move-object/from16 v0, v86

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v54

    const/16 v49, 0x0

    :goto_2
    move/from16 v0, v49

    move/from16 v1, v54

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v21

    packed-switch v21, :pswitch_data_1

    :cond_3
    :goto_3
    :pswitch_25
    add-int/lit8 v49, v49, 0x1

    goto :goto_2

    :pswitch_26
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    goto :goto_3

    :pswitch_27
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v50

    goto :goto_3

    :pswitch_28
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v56

    goto :goto_3

    :pswitch_29
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    goto :goto_3

    :pswitch_2a
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v60

    goto :goto_3

    :pswitch_2b
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    goto :goto_3

    :pswitch_2c
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    goto :goto_3

    :pswitch_2d
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    goto :goto_3

    :pswitch_2e
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    goto :goto_3

    :pswitch_2f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    :pswitch_30
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    :pswitch_31
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    goto/16 :goto_3

    :pswitch_32
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    goto/16 :goto_3

    :pswitch_34
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    goto/16 :goto_3

    :pswitch_35
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    goto/16 :goto_3

    :pswitch_36
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    goto/16 :goto_3

    :pswitch_37
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v34

    goto/16 :goto_3

    :pswitch_38
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    :pswitch_39
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    :pswitch_3a
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    :pswitch_3b
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    :pswitch_3c
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    :pswitch_3d
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    :pswitch_3e
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    :pswitch_3f
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    :pswitch_40
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    :pswitch_41
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    :pswitch_42
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    :pswitch_43
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    :pswitch_44
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    :pswitch_45
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v78

    goto/16 :goto_3

    :pswitch_46
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v80

    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v78

    goto/16 :goto_3

    :pswitch_47
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    :pswitch_48
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v77

    goto/16 :goto_3

    :pswitch_49
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v42

    goto/16 :goto_3

    :pswitch_4a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    :pswitch_4b
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    :pswitch_4c
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    :pswitch_4d
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    goto/16 :goto_3

    :pswitch_4e
    const/high16 v5, 0x3f800000

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    :pswitch_4f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    :pswitch_50
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v76

    goto/16 :goto_3

    :pswitch_51
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    goto/16 :goto_3

    :pswitch_52
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    goto/16 :goto_3

    :pswitch_53
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v63

    goto/16 :goto_3

    :pswitch_54
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_3

    :pswitch_55
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    goto/16 :goto_3

    :pswitch_56
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v61

    goto/16 :goto_3

    :pswitch_57
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v62

    goto/16 :goto_3

    :pswitch_58
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v65

    goto/16 :goto_3

    :pswitch_59
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v66

    goto/16 :goto_3

    :pswitch_5a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    goto/16 :goto_3

    :pswitch_5b
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    goto/16 :goto_3

    :pswitch_5c
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    goto/16 :goto_3

    :pswitch_5d
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    goto/16 :goto_3

    :pswitch_5e
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    goto/16 :goto_3

    :pswitch_5f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto/16 :goto_3

    :pswitch_60
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto/16 :goto_3

    :pswitch_61
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto/16 :goto_3

    :pswitch_62
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto/16 :goto_3

    :pswitch_63
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_3

    :pswitch_64
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v75

    goto/16 :goto_3

    :pswitch_65
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v71

    goto/16 :goto_3

    :pswitch_66
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v73

    goto/16 :goto_3

    :pswitch_67
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    goto/16 :goto_3

    :pswitch_68
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v74

    goto/16 :goto_3

    :pswitch_69
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v70

    goto/16 :goto_3

    :pswitch_6a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    goto/16 :goto_3

    :pswitch_6b
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v69

    goto/16 :goto_3

    :pswitch_6c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    :pswitch_6d
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v82

    goto/16 :goto_3

    :pswitch_6e
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v81

    goto/16 :goto_3

    :pswitch_6f
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v83

    goto/16 :goto_3

    :pswitch_70
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v84

    goto/16 :goto_3

    :pswitch_71
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v85

    goto/16 :goto_3

    :pswitch_72
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v87

    goto/16 :goto_3

    :pswitch_73
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v79

    goto/16 :goto_3

    :pswitch_74
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_3

    :pswitch_75
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v58

    goto/16 :goto_3

    :pswitch_76
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mSpacingAdd:F

    float-to-int v5, v5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    :pswitch_77
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    :pswitch_78
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    goto/16 :goto_3

    :pswitch_79
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v11, v11, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v5, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_3

    :pswitch_7a
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    :pswitch_7b
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v11, v11, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v5, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_3

    :pswitch_7c
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_7d
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :catch_0
    move-exception v40

    const-string v5, "TextView"

    const-string v11, "Failure reading input extras"

    move-object/from16 v0, v40

    invoke-static {v5, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_1
    move-exception v40

    const-string v5, "TextView"

    const-string v11, "Failure reading input extras"

    move-object/from16 v0, v40

    invoke-static {v5, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :pswitch_7e
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    :pswitch_7f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    :pswitch_80
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleLeftTopRes:I

    goto/16 :goto_3

    :pswitch_81
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleRightTopRes:I

    goto/16 :goto_3

    :pswitch_82
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupBackGroundRes:I

    goto/16 :goto_3

    :pswitch_83
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupDividerRes:I

    goto/16 :goto_3

    :pswitch_84
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupSelectAllRes:I

    goto/16 :goto_3

    :pswitch_85
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupCopyRes:I

    goto/16 :goto_3

    :pswitch_86
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupCutRes:I

    goto/16 :goto_3

    :pswitch_87
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupPasteRes:I

    goto/16 :goto_3

    :pswitch_88
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupTranslateRes:I

    goto/16 :goto_3

    :pswitch_89
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupShareRes:I

    goto/16 :goto_3

    :pswitch_8a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupWebSearchRes:I

    goto/16 :goto_3

    :pswitch_8b
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupClipboardRes:I

    goto/16 :goto_3

    :pswitch_8c
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupDictionaryRes:I

    goto/16 :goto_3

    :pswitch_8d
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupWindowBackgroundRes:I

    goto/16 :goto_3

    :pswitch_8e
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupItemBackGroundRes:I

    goto/16 :goto_3

    :pswitch_8f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupDividerRes:I

    goto/16 :goto_3

    :pswitch_90
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupCopyRes:I

    goto/16 :goto_3

    :pswitch_91
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupDictionaryRes:I

    goto/16 :goto_3

    :pswitch_92
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupShowSelectedRes:I

    goto/16 :goto_3

    :pswitch_93
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupScrapbookRes:I

    goto/16 :goto_3

    :pswitch_94
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupAddEventRes:I

    goto/16 :goto_3

    :pswitch_95
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupShareRes:I

    goto/16 :goto_3

    :pswitch_96
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mQuickPopupCloseRes:I

    goto/16 :goto_3

    :pswitch_97
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    :pswitch_98
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    :pswitch_99
    const/4 v5, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mClipboardDataFormat:I

    goto/16 :goto_3

    :pswitch_9a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    :pswitch_9b
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_3

    :pswitch_9c
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    goto/16 :goto_3

    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v24, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xfff

    move/from16 v88, v0

    const/16 v5, 0x81

    move/from16 v0, v88

    if-ne v0, v5, :cond_17

    const/16 v59, 0x1

    :goto_4
    const/16 v5, 0xe1

    move/from16 v0, v88

    if-ne v0, v5, :cond_18

    const/16 v89, 0x1

    :goto_5
    const/16 v5, 0x12

    move/from16 v0, v88

    if-ne v0, v5, :cond_19

    const/16 v55, 0x1

    :goto_6
    if-eqz v50, :cond_1b

    :try_start_1
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v26

    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/method/KeyListener;

    iput-object v5, v11, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v51, :cond_1a

    move/from16 v5, v51

    :goto_7
    iput v5, v11, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v89

    move/from16 v3, v55

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    :cond_5
    if-eqz v67, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput-boolean v11, v5, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    sget-object v5, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v24

    if-ne v0, v5, :cond_6

    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    move-object/from16 v3, v35

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v77

    move/from16 v2, v77

    move/from16 v3, v77

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    if-eqz v77, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    if-nez v5, :cond_7

    if-gez v42, :cond_7

    const/16 v42, 0x3

    :cond_7
    packed-switch v42, :pswitch_data_2

    :goto_9
    if-eqz v81, :cond_2d

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz v82, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_8
    move/from16 v0, v85

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/TextView;->setRawTextSize(F)V

    if-eqz v18, :cond_9

    new-instance v5, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_9
    if-nez v58, :cond_a

    if-nez v59, :cond_a

    if-nez v89, :cond_a

    if-eqz v55, :cond_2e

    :cond_a
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_b
    :goto_b
    new-instance v57, Landroid/util/TypedValue;

    invoke-direct/range {v57 .. v57}, Landroid/util/TypedValue;-><init>()V

    const v5, 0x101046a

    const/4 v11, 0x0

    move-object/from16 v0, v86

    move-object/from16 v1, v57

    invoke-virtual {v0, v5, v1, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    if-eqz v57, :cond_2f

    move-object/from16 v0, v57

    iget v5, v0, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_2f

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    :goto_c
    sget-boolean v5, Landroid/widget/TextView;->B_USE_LIGHT_FONT:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_c

    const/4 v5, -0x1

    move/from16 v0, v87

    if-ne v0, v5, :cond_c

    if-nez v45, :cond_c

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-nez v5, :cond_c

    const-string/jumbo v45, "sec-roboto-light"

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_30

    if-eqz v45, :cond_30

    const-string/jumbo v5, "sans-serif-light"

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string/jumbo v45, "sec-roboto-light"

    const/16 v79, 0x0

    :cond_d
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v87

    move/from16 v3, v79

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    sget-boolean v5, Landroid/widget/TextView;->B_USE_HINT_LIGHT_FONT:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_e

    const/4 v5, -0x1

    move/from16 v0, v87

    if-ne v0, v5, :cond_e

    if-nez v47, :cond_e

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-nez v5, :cond_e

    const-string/jumbo v47, "sec-roboto-light"

    const/16 v48, 0x0

    :cond_e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    if-eqz v76, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v76

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_f
    if-eqz v9, :cond_10

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Landroid/widget/TextView;->addInnerShadowTextEffect(FFFIF)I

    :cond_11
    if-eqz v71, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v75

    move/from16 v2, v71

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    :cond_12
    if-eqz v68, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v70

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    :cond_13
    if-ltz v53, :cond_31

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v11, 0x0

    new-instance v90, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v90

    move/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v90, v5, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_e
    const/4 v5, -0x1

    move/from16 v0, v78

    if-eq v0, v5, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setStringName(I)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->fromResLock:Z

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz v46, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_15
    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    if-eqz v5, :cond_32

    :cond_16
    const/16 v44, 0x1

    :goto_f
    move/from16 v28, v44

    move/from16 v52, v44

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v54

    const/16 v49, 0x0

    :goto_10
    move/from16 v0, v49

    move/from16 v1, v54

    if-ge v0, v1, :cond_33

    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :goto_11
    add-int/lit8 v49, v49, 0x1

    goto :goto_10

    :cond_17
    const/16 v59, 0x0

    goto/16 :goto_4

    :cond_18
    const/16 v89, 0x0

    goto/16 :goto_5

    :cond_19
    const/16 v55, 0x0

    goto/16 :goto_6

    :catch_2
    move-exception v43

    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v43

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v43

    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v43

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_4
    move-exception v43

    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v43

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_1a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v5}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v5

    goto/16 :goto_7

    :catch_5
    move-exception v40

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput v11, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_1b
    if-eqz v30, :cond_1d

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v51, :cond_1c

    move/from16 v5, v51

    :goto_12
    iput v5, v11, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_1c
    const/4 v5, 0x1

    goto :goto_12

    :cond_1d
    if-eqz v51, :cond_1f

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1, v5}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static/range {v51 .. v51}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v5

    if-nez v5, :cond_1e

    const/16 v77, 0x1

    :goto_13
    goto/16 :goto_8

    :cond_1e
    const/16 v77, 0x0

    goto :goto_13

    :cond_1f
    if-eqz v60, :cond_20

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/16 v51, 0x3

    move/from16 v0, v51

    iput v0, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_20
    if-eqz v56, :cond_25

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v90, v0

    and-int/lit8 v5, v56, 0x2

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    move v11, v5

    :goto_14
    and-int/lit8 v5, v56, 0x4

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    :goto_15
    invoke-static {v11, v5}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    move-object/from16 v0, v90

    iput-object v5, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v51, 0x2

    and-int/lit8 v5, v56, 0x2

    if-eqz v5, :cond_21

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x1000

    move/from16 v51, v0

    :cond_21
    and-int/lit8 v5, v56, 0x4

    if-eqz v5, :cond_22

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x2000

    move/from16 v51, v0

    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v0, v51

    iput v0, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_23
    const/4 v5, 0x0

    move v11, v5

    goto :goto_14

    :cond_24
    const/4 v5, 0x0

    goto :goto_15

    :cond_25
    if-nez v23, :cond_26

    const/4 v5, -0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_27

    :cond_26
    const/16 v51, 0x1

    packed-switch v22, :pswitch_data_3

    sget-object v27, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v0, v51

    iput v0, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :pswitch_9d
    sget-object v27, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x4000

    move/from16 v51, v0

    goto :goto_16

    :pswitch_9e
    sget-object v27, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x2000

    move/from16 v51, v0

    goto :goto_16

    :pswitch_9f
    sget-object v27, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x1000

    move/from16 v51, v0

    goto :goto_16

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput v11, v5, Landroid/widget/Editor;->mInputType:I

    :cond_28
    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    :cond_29
    if-eqz v41, :cond_2a

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput v11, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :cond_2b
    packed-switch v25, :pswitch_data_4

    goto/16 :goto_8

    :pswitch_a0
    sget-object v24, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    :pswitch_a1
    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    :pswitch_a2
    sget-object v24, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    :pswitch_a3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    :pswitch_a4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    :pswitch_a5
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    :pswitch_a6
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_17
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    :cond_2c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_17

    :cond_2d
    const/high16 v5, -0x1000000

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v81

    goto/16 :goto_a

    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v5, v5, 0xfff

    const/16 v11, 0x81

    if-ne v5, v11, :cond_b

    goto/16 :goto_b

    :cond_2f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    goto/16 :goto_c

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_d

    if-eqz v45, :cond_d

    const-string/jumbo v5, "sans-serif-medium"

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v45, "sec-roboto-light"

    const/16 v79, 0x1

    goto/16 :goto_d

    :cond_31
    sget-object v5, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_e

    :cond_32
    const/16 v44, 0x0

    goto/16 :goto_f

    :sswitch_0
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v44

    goto/16 :goto_11

    :sswitch_1
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    goto/16 :goto_11

    :sswitch_2
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    goto/16 :goto_11

    :cond_33
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_35

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_36

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_36
    new-instance v5, Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView$IClipboardDataPasteEventImpl;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v5

    const/4 v11, 0x2

    if-lt v5, v11, :cond_37

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_37
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_38

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->fromResLock:Z

    :cond_38
    sget v5, Landroid/widget/TextView;->sSpenUspLevel:I

    const/4 v11, 0x3

    if-ne v5, v11, :cond_39

    new-instance v5, Landroid/widget/TextView$PenSelectVibrator;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView$PenSelectVibrator;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    new-instance v5, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    :cond_39
    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mWBMaxLength:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_6
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_25
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_6e
        :pswitch_6d
        :pswitch_6f
        :pswitch_70
        :pswitch_49
        :pswitch_44
        :pswitch_2f
        :pswitch_30
        :pswitch_3f
        :pswitch_39
        :pswitch_43
        :pswitch_3d
        :pswitch_2d
        :pswitch_46
        :pswitch_45
        :pswitch_4e
        :pswitch_4c
        :pswitch_38
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3e
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_47
        :pswitch_75
        :pswitch_48
        :pswitch_2e
        :pswitch_4b
        :pswitch_4d
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_27
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_4f
        :pswitch_32
        :pswitch_34
        :pswitch_31
        :pswitch_33
        :pswitch_37
        :pswitch_76
        :pswitch_77
        :pswitch_4a
        :pswitch_78
        :pswitch_7c
        :pswitch_7d
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7f
        :pswitch_97
        :pswitch_98
        :pswitch_25
        :pswitch_25
        :pswitch_9b
        :pswitch_25
        :pswitch_25
        :pswitch_7e
        :pswitch_9a
        :pswitch_9c
        :pswitch_35
        :pswitch_36
        :pswitch_74
        :pswitch_80
        :pswitch_81
        :pswitch_99
        :pswitch_25
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8b
        :pswitch_25
        :pswitch_25
        :pswitch_8a
        :pswitch_8c
        :pswitch_54
        :pswitch_56
        :pswitch_58
        :pswitch_55
        :pswitch_57
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/widget/TextView;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p0    # Landroid/widget/TextView;
    .param p1    # Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0, p1}, Landroid/widget/TextView;->pasteCipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0    # Landroid/widget/TextView;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)F
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget v0, p0, Landroid/widget/TextView;->TOUCH_DELTA:F

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    return v0
.end method

.method static synthetic access$2300()Z
    .locals 1

    sget-boolean v0, Landroid/widget/TextView;->mIsFindTargetView:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Landroid/widget/TextView;->mIsFindTargetView:Z

    return p0
.end method

.method static synthetic access$2400()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Landroid/widget/TextView;

    sput-object p0, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Landroid/widget/TextView;)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView;->canTextMultiSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Landroid/widget/TextView;

    sput-object p0, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700()J
    .locals 2

    sget-wide v0, Landroid/widget/TextView;->mLastHoveredTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;)V
    .locals 0
    .param p0    # Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/TextView;III)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->checkPosInView(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/TextView;III)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->checkPosOnText(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)V
    .locals 0
    .param p0    # Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView;->hideMultiSelectPopupWindow()V

    return-void
.end method

.method static synthetic access$3300(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;
    .locals 1
    .param p0    # Landroid/widget/TextView;
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()I
    .locals 1

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    return v0
.end method

.method static synthetic access$3500()I
    .locals 1

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    return v0
.end method

.method static synthetic access$3602(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0    # Landroid/widget/TextView;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    return p1
.end method

.method static synthetic access$3702(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0    # Landroid/widget/TextView;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    return p1
.end method

.method static synthetic access$3800(Landroid/widget/TextView;II)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->selectCurrentWordForMultiSelection(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/TextView;)V
    .locals 0
    .param p0    # Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView;->showMultiSelectPopupWindow()V

    return-void
.end method

.method static synthetic access$4000()I
    .locals 1

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0    # Landroid/widget/TextView;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectall:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(I)Z
    .locals 1
    .param p0    # I

    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/TextView;)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    return v0
.end method

.method private addOuterGlowTextEffect(FI[I[F[FF)I
    .locals 7
    .param p1    # F
    .param p2    # I
    .param p3    # [I
    .param p4    # [F
    .param p5    # [F
    .param p6    # F

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->addOuterGlowTextEffect(FI[I[F[FF)I

    move-result v0

    return v0
.end method

.method private addStrokeTextEffect(FIFII)I
    .locals 6
    .param p1    # F
    .param p2    # I
    .param p3    # F
    .param p4    # I
    .param p5    # I

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->addStrokeTextEffect(FIFII)I

    move-result v0

    return v0
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    const/4 v0, 0x1

    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    const/high16 v1, 0x100000

    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    return-void
.end method

.method private bringTextIntoView()Z
    .locals 15

    const/16 v14, 0x50

    const/4 v11, 0x1

    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :goto_0
    const/4 v6, 0x0

    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_0

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    iget v12, p0, Landroid/view/View;->mRight:I

    iget v13, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v2, v12, v13

    iget v12, p0, Landroid/view/View;->mBottom:I

    iget v13, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v13

    sub-int v10, v12, v13

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v3

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_5

    if-ne v1, v11, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :cond_1
    :goto_1
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_9

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->floor(F)F

    move-result v12

    float-to-int v5, v12

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v7, v12

    sub-int v12, v7, v5

    if-ge v12, v2, :cond_7

    add-int v12, v7, v5

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, v2, 0x2

    sub-int v8, v12, v13

    :goto_2
    if-ge v3, v10, :cond_b

    const/4 v9, 0x0

    :goto_3
    iget v12, p0, Landroid/view/View;->mScrollX:I

    if-ne v8, v12, :cond_2

    iget v12, p0, Landroid/view/View;->mScrollY:I

    if-eq v9, v12, :cond_d

    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/view/View;->scrollTo(II)V

    :goto_4
    return v11

    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_5
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_1

    if-ne v1, v11, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_5
    goto :goto_1

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_5

    :cond_7
    if-gez v1, :cond_8

    sub-int v8, v7, v2

    goto :goto_2

    :cond_8
    move v8, v5

    goto :goto_2

    :cond_9
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_a

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v7, v12

    sub-int v8, v7, v2

    goto :goto_2

    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->floor(F)F

    move-result v12

    float-to-int v8, v12

    goto :goto_2

    :cond_b
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_c

    sub-int v9, v3, v10

    goto :goto_3

    :cond_c
    const/4 v9, 0x0

    goto :goto_3

    :cond_d
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private canMarquee()Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private canSelectText()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTextMultiSelection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isCoverOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isCarMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isDisabledStylusPenEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, -0x2

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    const-string v0, "TextView"

    const-string v3, "** skip checkForRelayout()"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_1

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_7

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_7

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_7

    :cond_2
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_7

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_3

    move v2, v6

    :goto_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0
.end method

.method private checkForResize()V
    .locals 5

    const/4 v4, -0x2

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v3, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPosInView(III)Z
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    neg-int v3, p3

    neg-int v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-gt p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPosOnText(III)Z
    .locals 13
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    const/4 v11, 0x2

    new-array v8, v11, [I

    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v11, 0x0

    aget v11, v8, v11

    sub-int v6, p1, v11

    const/4 v11, 0x1

    aget v11, v8, v11

    sub-int v7, p2, v11

    int-to-float v11, v7

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    add-int v4, v11, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    add-int v2, v11, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v11

    float-to-int v5, v11

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    add-int v10, v11, v12

    const/4 v9, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    move v9, v10

    sub-int v10, v9, v5

    :goto_1
    sub-int v11, v10, p3

    if-lt v6, v11, :cond_1

    add-int v11, v9, p3

    if-lt v11, v6, :cond_1

    if-lt v7, v4, :cond_1

    if-le v7, v2, :cond_3

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    add-int v9, v10, v5

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private compressText(F)Z
    .locals 7
    .param p1    # F

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    cmpl-float v4, v0, v6

    if-lez v4, :cond_0

    const v4, 0x3d8f5c29

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0    # Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 11
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;
    .param p3    # Landroid/view/KeyEvent;

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v5, v6

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v6, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_1
    const/16 v4, 0x43

    if-ne p1, v4, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_a

    iput v6, p0, Landroid/widget/TextView;->mLastKeyCode:I

    :goto_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    const/4 v2, 0x1

    if-eqz p3, :cond_c

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v9, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v9, p0, v4, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v4, v4, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v4, v4, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v4, p0, v6, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v4, Landroid/widget/Editor$InputContentType;->enterDown:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v6

    goto/16 :goto_0

    :sswitch_1
    iput-boolean v7, p0, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v4, :cond_6

    iget v4, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_6

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v4, v4, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v4, v4, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v4, p0, v6, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v4, Landroid/widget/Editor$InputContentType;->enterDown:Z

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v6

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v6

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v9, "clipboardEx"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_9

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v4, v4, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v4, :cond_3

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto/16 :goto_0

    :sswitch_4
    iget v4, p0, Landroid/widget/TextView;->mLastAction:I

    if-eq v4, v8, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    invoke-virtual {p0, v4, v9, v10}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto/16 :goto_1

    :cond_a
    iput p1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v4

    :catch_0
    move-exception v4

    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v9, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v9, p0, v4, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    if-eqz v3, :cond_d

    move v5, v7

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_10

    const/4 v2, 0x1

    if-eqz p3, :cond_e

    :try_start_1
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v9, p0, v4, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    const/4 v2, 0x0

    if-nez v3, :cond_0

    :cond_e
    :goto_3
    if-eqz v2, :cond_10

    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v9, p0, v4, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_10

    sparse-switch p1, :sswitch_data_1

    :goto_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_f

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_f

    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_f
    move v5, v8

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    goto :goto_4

    :cond_10
    iget-boolean v4, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v4, :cond_11

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_11

    move v4, v5

    :goto_5
    move v5, v4

    goto/16 :goto_0

    :cond_11
    move v4, v6

    goto :goto_5

    :catch_1
    move-exception v4

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
        0x43 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
        0x7a -> :sswitch_5
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private drawTextStrikethrough(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v14

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/TextView;->mAssociatedCheckBoxChecked:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_8

    if-lez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-array v7, v14, [F

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_1

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    aput v1, v7, v12

    if-lez v12, :cond_0

    aget v1, v7, v12

    add-int/lit8 v4, v12, -0x1

    aget v4, v7, v4

    add-float/2addr v1, v4

    aput v1, v7, v12

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aget v21, v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    mul-float v18, v21, v1

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_8

    if-nez v12, :cond_5

    const/16 v16, 0x0

    :goto_2
    aget v22, v7, v12

    const/4 v10, 0x0

    cmpg-float v1, v18, v16

    if-gtz v1, :cond_6

    const/4 v10, 0x0

    :cond_2
    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    int-to-float v2, v13

    if-gez v11, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/text/Layout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float v2, v1, v10

    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    add-int v1, v1, v20

    int-to-float v15, v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int v1, v1, v20

    int-to-float v8, v1

    if-nez v12, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/text/Layout;->getTopPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v15, v1

    :cond_4
    sub-float v1, v8, v15

    const v4, 0x3f266666

    mul-float/2addr v1, v4

    add-float v3, v15, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v4, 0x40000000

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    add-float v4, v2, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v12, -0x1

    aget v16, v7, v1

    goto :goto_2

    :cond_6
    cmpl-float v1, v18, v16

    if-lez v1, :cond_7

    cmpg-float v1, v18, v22

    if-gtz v1, :cond_7

    sub-float v10, v18, v16

    goto :goto_3

    :cond_7
    cmpl-float v1, v18, v22

    if-lez v1, :cond_2

    sub-float v10, v22, v16

    goto :goto_3

    :cond_8
    return-void
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1    # Z

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    :goto_0
    if-ge v3, v0, :cond_1

    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    sub-int v4, v0, v3

    :cond_1
    :goto_1
    return v4

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1    # Landroid/text/Layout;

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_1
.end method

.method private getCurrentLocaleAsString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDesiredHeight()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .param p1    # Landroid/text/Layout;
    .param p2    # Z

    const/4 v6, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/2addr v0, v3

    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    if-eqz p2, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    add-int/2addr v0, v3

    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
    .param p2    # I

    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0

    :pswitch_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_1
    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_2
    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

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

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private getOffsetAtCoordinate(IF)I
    .locals 1
    .param p1    # I
    .param p2    # F

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p1    # Landroid/view/View;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/res/TypedArray;
    .param p2    # I

    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/res/TypedArray;

    const/4 v4, -0x1

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v4, :cond_0

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-object v2
.end method

.method private getTextForRectSelection(Landroid/graphics/Rect;)Ljava/lang/CharSequence;
    .locals 23
    .param p1    # Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    :cond_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    :cond_1
    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_2
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v12

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v22

    sub-int v17, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v21

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v22

    sub-int v16, v21, v22

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v21

    if-nez v21, :cond_3

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v14, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v5, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v6, v21, v22

    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v10, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v11

    int-to-float v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v3

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v3, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v4

    if-ltz v11, :cond_4

    if-ltz v4, :cond_4

    if-ne v11, v4, :cond_5

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    if-le v11, v4, :cond_6

    move/from16 v18, v11

    move v11, v4

    move/from16 v4, v18

    :cond_6
    invoke-interface {v15, v11, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1    # Z

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    goto :goto_0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 14

    const/4 v13, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iget-boolean v9, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_0

    iput-boolean v13, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    iget-boolean v9, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v9, :cond_1

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_1
    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    move-object v9, v8

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v5

    move-object v9, v8

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v4

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    aget v10, v5, v2

    aget v11, v4, v2

    iget-object v12, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9, v10, v11, v12}, Landroid/text/Layout;->addSelectionPath(IILandroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v13, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_3
    iget-object v9, p0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    iget v10, p0, Landroid/widget/TextView;->mMultiHighlightColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    goto :goto_0

    :cond_4
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_5
    if-ltz v7, :cond_8

    if-ne v7, v6, :cond_9

    iget-object v9, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v9, :cond_8

    iget-object v9, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-wide v11, v11, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x1f4

    cmp-long v9, v9, v11

    if-gez v9, :cond_8

    iget-boolean v9, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v9, :cond_6

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_6
    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v7, v10, v11}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    iget-object v9, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->updateCursorsPositions()V

    iput-boolean v13, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_7
    iget v9, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_8
    :goto_2
    move-object v9, v0

    goto/16 :goto_0

    :cond_9
    iget-boolean v9, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v9, :cond_a

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_a
    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v6, v10}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v13, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_b
    iget v9, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_2
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideMultiSelectPopupWindow()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->hideMultiSelectPopupWindow()V

    return-void
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    :cond_1
    return-void
.end method

.method private isCarMode()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isCoverOpened()Z
    .locals 5

    iget-object v3, p0, Landroid/widget/TextView;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v3, :cond_1

    :try_start_0
    const-string v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v3, "TextView"

    const-string v4, "isCoverOpened() : RemoteException!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "TextView"

    const-string v4, "isCoverOpened() : mCoverManager is null!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isDisabledStylusPenEvent()Z
    .locals 2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "flipboard.boxer.app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isFinishSetupWizard()Z
    .locals 2

    const-string v0, "FINISH"

    const-string/jumbo v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHoveringSettingEnabled(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->isSPenHoveringSettingsEnabled()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0    # I

    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0    # I

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSPenHoveringSettingsEnabled()Z
    .locals 6

    const/4 v5, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_link_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isShowingHint()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0    # I

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logLetterMode(I)V
    .locals 5
    .param p1    # I

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p1, 0xf

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :goto_1
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>KEYSELECT: SHIFT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 37
    .param p1    # I
    .param p2    # Landroid/text/BoringLayout$Metrics;
    .param p3    # I
    .param p4    # Landroid/text/Layout$Alignment;
    .param p5    # Z
    .param p6    # Landroid/text/TextUtils$TruncateAt;
    .param p7    # Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    sget v2, Landroid/widget/TextView;->sSpenUspLevel:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mUseDisplayText:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    :cond_0
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v3, v5, [C

    new-array v9, v5, [F

    const/4 v2, 0x1

    new-array v0, v2, [C

    move-object/from16 v30, v0

    const/4 v2, 0x0

    const/16 v4, 0x2026

    aput-char v4, v30, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v34, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    sub-int v4, v5, v4

    move-object/from16 v0, v34

    invoke-direct {v0, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v36

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v2, v0, v4, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v31

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    if-nez v2, :cond_3

    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_b

    new-instance v15, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_a

    move-object/from16 v25, p6

    :goto_1
    move/from16 v19, p1

    move-object/from16 v20, p4

    move/from16 v26, p3

    invoke-direct/range {v15 .. v26}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    :cond_2
    :goto_2
    return-object v15

    :cond_3
    add-float v2, v36, v31

    move/from16 v0, p3

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    sget-object p6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_4
    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v5

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v33

    const/16 v32, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_5

    move/from16 v0, v35

    int-to-float v2, v0

    aget v4, v9, v32

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v2, v0

    cmpg-float v2, v31, v2

    if-gtz v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_9

    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-char v4, v30, v4

    aput-char v4, v3, v2

    const/16 v32, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_7

    const v2, 0xfeff

    aput-char v2, v3, v32

    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :cond_7
    new-instance v34, Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-direct {v0, v3, v2, v5}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_8

    new-instance v14, Landroid/text/SpannableString;

    move-object/from16 v0, v34

    invoke-direct {v14, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    const/4 v11, 0x0

    const-class v13, Ljava/lang/Object;

    const/4 v15, 0x0

    move v12, v5

    invoke-static/range {v10 .. v15}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 v17, v14

    :goto_5
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v34

    goto :goto_5

    :cond_9
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_1

    :cond_b
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v4, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_c
    if-eqz p2, :cond_14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_f

    if-eqz p6, :cond_d

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_f

    :cond_d
    if-eqz p7, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    :goto_6
    if-eqz p7, :cond_2

    move-object v2, v15

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-static/range {v17 .. v24}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    goto :goto_6

    :cond_f
    if-eqz p5, :cond_11

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_11

    if-eqz p7, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-static/range {v17 .. v26}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    goto/16 :goto_2

    :cond_11
    if-eqz p5, :cond_13

    new-instance v15, Landroid/text/StaticLayout;

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_7
    move-object/from16 v16, v15

    move/from16 v21, p1

    move-object/from16 v22, p4

    move-object/from16 v27, p6

    move/from16 v28, p3

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    goto/16 :goto_2

    :cond_12
    const v29, 0x7fffffff

    goto :goto_7

    :cond_13
    new-instance v15, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v16, v15

    move/from16 v19, p1

    move-object/from16 v20, p4

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    goto/16 :goto_2

    :cond_14
    if-eqz p5, :cond_16

    new-instance v15, Landroid/text/StaticLayout;

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_8
    move-object/from16 v16, v15

    move/from16 v21, p1

    move-object/from16 v22, p4

    move-object/from16 v27, p6

    move/from16 v28, p3

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    goto/16 :goto_2

    :cond_15
    const v29, 0x7fffffff

    goto :goto_8

    :cond_16
    new-instance v15, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v16, v15

    move/from16 v19, p1

    move-object/from16 v20, p4

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    goto/16 :goto_2
.end method

.method private nullLayouts()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_2
    return-void
.end method

.method private paste(II)V
    .locals 18
    .param p1    # I
    .param p2    # I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v15}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "clipboard"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v15

    if-ge v10, v15, :cond_2

    invoke-virtual {v3, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_0

    if-nez v8, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Spannable;

    move/from16 v0, p2

    invoke-static {v15, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Editable;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v15, v0, v1, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v8, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Editable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    const-string v17, "\n"

    invoke-interface/range {v15 .. v17}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Editable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v15, v0, v13}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const-wide/16 v15, 0x0

    sput-wide v15, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "clipboardEx"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/sec/clipboard/ClipboardExManager;->getFrozenState()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/sec/clipboard/ClipboardExManager;->callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Spannable;

    move/from16 v0, p2

    invoke-static {v15, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v15, v15, Landroid/text/Spanned;

    if-eqz v15, :cond_6

    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v13, v14

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Editable;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v15, v0, v1, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const-wide/16 v15, 0x0

    sput-wide v15, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v9

    const-string v15, "TextView"

    const-string/jumbo v16, "skip to paste clipdata - ClassCastException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private pasteCipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 23
    .param p1    # Landroid/sec/clipboard/data/ClipboardData;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastAction:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    const/16 v20, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v20, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_2
    const/4 v12, 0x0

    const/16 v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v20

    if-lez v20, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7, v12}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v9

    const/16 v20, 0x0

    invoke-static {v9, v10}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v20, 0x0

    invoke-static {v9, v10}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    check-cast v20, Landroid/text/Spannable;

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedText:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    new-instance v16, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v12, v16

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    check-cast v20, Landroid/text/Editable;

    move-object/from16 v0, v20

    invoke-interface {v0, v8, v7, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    if-ne v8, v7, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastAction:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosStart:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_4
    :goto_3
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedText:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mChangedSize:I

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v18, p1

    check-cast v18, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual/range {v18 .. v18}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v12

    const v17, 0x1040bc7

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v5, p1

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v12

    const v17, 0x1040bc9

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v19, p1

    check-cast v19, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-virtual/range {v19 .. v19}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const v17, 0x1040bc7

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v11, p1

    check-cast v11, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v12

    const v17, 0x1040bc7

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v6, p1

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    const v17, 0x1040bc7

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mChangedText:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mChangedSize:I

    move/from16 v20, v0

    if-lez v20, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastAction:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosStart:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x1040bee

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x1040bee

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private registerForPreDraw()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    :cond_0
    return-void
.end method

.method private registerForStylusPenEvent()V
    .locals 3

    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->removeForStylusPenEvent()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->isDisabledStylusPenEvent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TextView$StylusEventListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    goto :goto_0
.end method

.method private removeForStylusPenEvent()V
    .locals 2

    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    goto :goto_0
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    array-length v1, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p1, :cond_0

    if-eq v3, p2, :cond_0

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .param p0    # Landroid/text/Spannable;
    .param p1    # I
    .param p2    # I

    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestWritingBuddy()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "TextView"

    const-string v2, "Request WritingBuddy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->show()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    return-void
.end method

.method private selectCurrentWordForMultiSelection(II)Z
    .locals 13
    .param p1    # I
    .param p2    # I

    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v8

    if-eqz v8, :cond_1

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->selectAll(Landroid/text/Spannable;)V

    move v8, v10

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    and-int/lit16 v7, v0, 0xff0

    const/4 v8, 0x2

    if-eq v1, v8, :cond_2

    const/4 v8, 0x3

    if-eq v1, v8, :cond_2

    const/4 v8, 0x4

    if-eq v1, v8, :cond_2

    const/16 v8, 0x10

    if-eq v7, v8, :cond_2

    const/16 v8, 0x20

    if-eq v7, v8, :cond_2

    const/16 v8, 0xd0

    if-eq v7, v8, :cond_2

    const/16 v8, 0xb0

    if-ne v7, v8, :cond_3

    :cond_2
    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->selectAll(Landroid/text/Spannable;)V

    move v8, v10

    goto :goto_0

    :cond_3
    move-object v8, v4

    check-cast v8, Landroid/text/Spanned;

    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {v8, p1, p2, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    array-length v8, v6

    if-lt v8, v10, :cond_6

    aget-object v5, v6, v9

    move-object v8, v4

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object v8, v4

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    :cond_4
    if-ltz v3, :cond_5

    if-gez v2, :cond_9

    :cond_5
    move v8, v9

    goto :goto_0

    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    if-nez v8, :cond_7

    new-instance v8, Landroid/text/method/WordIterator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    :cond_7
    iget-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, v4, p1, p2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    iget-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, p1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v3

    iget-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, p2}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v2

    if-eq v3, v12, :cond_8

    if-eq v2, v12, :cond_8

    if-ne v3, v2, :cond_4

    :cond_8
    move v8, v9

    goto/16 :goto_0

    :cond_9
    if-ge v3, v2, :cond_b

    iput-boolean v9, p0, Landroid/widget/TextView;->mIsTouchDown:Z

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3, v2}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v8, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    invoke-virtual {v8, v10}, Landroid/widget/TextView$PenSelectVibrator;->playVibrator(I)V

    :cond_a
    move v8, v10

    goto/16 :goto_0

    :cond_b
    move v8, v9

    goto/16 :goto_0
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v3, :cond_1

    if-ge p3, p4, :cond_2

    iget v3, p0, Landroid/widget/TextView;->mLastKeyCode:I

    const/16 v4, 0x43

    if-eq v3, v4, :cond_2

    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    :cond_1
    :goto_1
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    return-void

    :cond_2
    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto :goto_1
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6
    .param p1    # Landroid/text/Editable;
    .param p2    # [Landroid/text/InputFilter;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    :goto_0
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v0, v5, Landroid/text/InputFilter;

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-lez v2, :cond_5

    array-length v5, p2

    add-int/2addr v5, v2

    new-array v1, v5, [Landroid/text/InputFilter;

    array-length v5, p2

    invoke-static {p2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    array-length v4, p2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    :cond_2
    if-eqz v0, :cond_3

    array-length v4, p2

    add-int v5, v4, v2

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v1, v5

    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :goto_1
    return-void

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1
.end method

.method private setInputType(IZ)V
    .locals 8
    .param p1    # I
    .param p2    # Z

    const/4 v5, 0x0

    const/4 v4, 0x1

    and-int/lit8 v2, p1, 0xf

    if-ne v2, v4, :cond_5

    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_1

    move v0, v4

    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_2

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    if-eqz p2, :cond_b

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :goto_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_3

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_3
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_4

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_4
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_8

    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_6

    move v6, v4

    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_7

    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    goto :goto_2

    :cond_6
    move v6, v5

    goto :goto_4

    :cond_7
    move v4, v5

    goto :goto_5

    :cond_8
    const/4 v4, 0x4

    if-ne v2, v4, :cond_9

    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    goto :goto_2

    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    goto :goto_2

    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    goto :goto_2

    :cond_9
    const/4 v4, 0x3

    if-ne v2, v4, :cond_a

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    goto :goto_2

    :cond_a
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    goto :goto_2

    :cond_b
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .param p1    # Landroid/text/method/KeyListener;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 3
    .param p1    # Landroid/content/ClipData;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    return-void
.end method

.method private setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V
    .locals 3
    .param p1    # Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    :cond_5
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Landroid/widget/TextView$BufferType;
    .param p3    # Z
    .param p4    # I

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 p1, v16

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_7
    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v15, 0x1

    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz v15, :cond_e

    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    move-object/from16 p1, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_a
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mUseDisplayText:Z

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_c

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_11

    :cond_b
    move-object/from16 v17, p1

    check-cast v17, Landroid/text/Spannable;

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 p1, v17

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_13

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mLastAction:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;)Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_1d

    move-object/from16 v18, p1

    check-cast v18, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v21

    array-length v11, v0

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_14

    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_d
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_2

    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_a

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    goto/16 :goto_4

    :cond_12
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_15

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    if-eqz v15, :cond_1a

    check-cast p1, Landroid/text/Editable;

    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1b
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setStringName(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void

    :cond_1d
    sget v4, Landroid/widget/TextView;->sSpenUspLevel:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x1388

    if-le v4, v5, :cond_1e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    goto :goto_8

    :cond_1e
    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    check-cast v18, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_1f

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const v7, 0x640012

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mUseDisplayText:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    goto/16 :goto_8
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "speak_password"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showMultiSelectPopupWindow()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow;->changeCurrentSelectedView(Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->showMultiSelectPopupWindow()V

    return-void
.end method

.method private startMarquee()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {p0, v3}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    new-instance v0, Landroid/widget/TextView$6;

    invoke-direct {v0, p0}, Landroid/widget/TextView$6;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addInnerShadowTextEffect(FFFIF)I
    .locals 6
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # F

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->addInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addLinearGradientTextEffect(FF[I[F[FF)I
    .locals 7
    .param p1    # F
    .param p2    # F
    .param p3    # [I
    .param p4    # [F
    .param p5    # [F
    .param p6    # F

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->addLinearGradientTextEffect(FF[I[F[FF)I

    move-result v0

    return v0
.end method

.method public addOuterGlowTextEffect(FIF)I
    .locals 1
    .param p1    # F
    .param p2    # I
    .param p3    # F

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->addOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addOuterShadowTextEffect(FFFIF)I
    .locals 6
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # F

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->addOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addStrokeTextEffect(FIF)I
    .locals 1
    .param p1    # F
    .param p2    # I
    .param p3    # F

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->addStrokeTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1    # Landroid/text/TextWatcher;

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    return-void
.end method

.method public applyWBTextBuffer(Z)Z
    .locals 7
    .param p1    # Z

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Editable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const-string v3, "TextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WB index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-le v2, v0, :cond_0

    move v2, v0

    :cond_0
    if-le v1, v0, :cond_4

    :goto_1
    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    :cond_2
    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_3
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public beginBatchEdit()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 29
    .param p1    # I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    :goto_1
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    sget-object v25, Landroid/widget/TextView$8;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Enum;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    const/4 v11, 0x0

    :goto_2
    if-lez v11, :cond_11

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    add-int/lit8 v25, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->floor(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    sub-int v25, v19, v17

    move/from16 v0, v25

    if-le v0, v14, :cond_2

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    add-int v25, v17, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v19

    :cond_2
    sub-int v25, v4, v20

    div-int/lit8 v13, v25, 0x2

    move/from16 v22, v13

    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    div-int/lit8 v22, v23, 0x4

    :cond_3
    div-int/lit8 v25, v14, 0x4

    move/from16 v0, v25

    if-le v13, v0, :cond_4

    div-int/lit8 v13, v14, 0x4

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    sub-int v21, v20, v22

    :cond_5
    sub-int v25, v4, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    sub-int v25, v23, v22

    sub-int v21, v4, v25

    :cond_6
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    sub-int v21, v15, v23

    :cond_7
    rsub-int/lit8 v25, v21, 0x0

    if-lez v25, :cond_8

    const/16 v21, 0x0

    :cond_8
    if-eqz v11, :cond_a

    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_9

    sub-int v12, v24, v13

    :cond_9
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    sub-int v25, v14, v13

    sub-int v12, v24, v25

    :cond_a
    if-gez v11, :cond_12

    sub-int v25, v17, v12

    if-lez v25, :cond_b

    move/from16 v12, v17

    :cond_b
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_c

    sub-int v12, v19, v14

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v12, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_1b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/view/View;->scrollTo(II)V

    :goto_5
    const/4 v5, 0x1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    if-nez v25, :cond_f

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    add-int/lit8 v26, v24, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    goto/16 :goto_1

    :pswitch_0
    const/4 v11, 0x1

    goto/16 :goto_2

    :pswitch_1
    const/4 v11, -0x1

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    move/from16 v0, v25

    neg-int v11, v0

    goto/16 :goto_2

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_12
    if-lez v11, :cond_14

    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_13

    sub-int v12, v19, v14

    :cond_13
    sub-int v25, v17, v12

    if-lez v25, :cond_c

    move/from16 v12, v17

    goto/16 :goto_4

    :cond_14
    sub-int v25, v19, v17

    move/from16 v0, v25

    if-gt v0, v14, :cond_15

    sub-int v25, v19, v17

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v17, v25

    goto/16 :goto_4

    :cond_15
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    sub-int v12, v19, v14

    goto/16 :goto_4

    :cond_16
    add-int v25, v17, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_17

    move/from16 v12, v17

    goto/16 :goto_4

    :cond_17
    move/from16 v0, v17

    if-le v0, v12, :cond_18

    move/from16 v12, v17

    goto/16 :goto_4

    :cond_18
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_19

    sub-int v12, v19, v14

    goto/16 :goto_4

    :cond_19
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_1a

    sub-int v12, v24, v13

    :cond_1a
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_4

    :cond_1b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v27, v0

    sub-long v7, v25, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    sub-int v9, v12, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    const-wide/16 v25, 0xfa

    cmp-long v25, v7, v25

    if-lez v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->awakenScrollBars(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/view/View;->scrollBy(II)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method canCopy()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canCut()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canDelete()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canPaste()Z
    .locals 3

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canRedo()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method canTranslate()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canUndo()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public cancelLongPress()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_0
    return-void
.end method

.method public changeClipboardDataFormat(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    :cond_0
    return-void
.end method

.method public clearAllMultiSelection()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->removeForTouchMonitorListener()V

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/penselect/PenSelectionController;->clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public clearAllTextEffect()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearAllTextEffect()V

    return-void
.end method

.method public clearComposingText()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method public clearEditables()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iput-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iput-object v2, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iput-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_3
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearMultiSelection()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    iput-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const/4 v1, 0x0

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/style/SelectableSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SelectableSpan;

    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    aget-object v6, v2, v1

    invoke-interface {v4, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/style/HoverableSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/HoverableSpan;

    const/4 v1, 0x0

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    aget-object v6, v0, v1

    invoke-interface {v4, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-boolean v4, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/text/MultiSelection;->clearMultiSelection(Landroid/text/Spannable;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hideMultiSelectPopupWindow()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sput-object v8, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public clearTextEffectOpacity()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearTextEffectOpacity()V

    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1    # F

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public debug(I)V
    .locals 3
    .param p1    # I

    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStringName = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_7
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    return-void
.end method

.method public enableMultiSelection(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->removeForStylusPenEvent()V

    :cond_0
    return-void
.end method

.method public enableNewActionPopupWindow(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->enableNewActionPopupWindow(Z)V

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    :cond_0
    return-void
.end method

.method public extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1    # Landroid/view/inputmethod/EditorInfo;

    const/high16 v5, 0x40000000

    const/high16 v4, 0x8000000

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_7

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :goto_1
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v4

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_3
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_4
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_5

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_5
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_6
    iget-object v2, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    :cond_7
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_8
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    iget v4, p0, Landroid/widget/TextView;->mWBMaxLength:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_1

    :cond_a
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_2
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 7
    .param p1    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/text/method/PasswordTransformationMethod;

    if-nez v4, :cond_2

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getTextForRectSelection(Landroid/graphics/Rect;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v5, "plain_text"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    :cond_2
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    goto :goto_0
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2    # Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public forceHideSoftInput(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    return-void
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 4

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextEffectOffsetBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    if-ge v2, v4, :cond_0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    const/16 v5, 0x30

    if-ne v1, v5, :cond_4

    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    :cond_4
    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    if-ge v2, v4, :cond_0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    const/16 v5, 0x30

    if-eq v1, v5, :cond_0

    const/16 v5, 0x50

    if-ne v1, v5, :cond_4

    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    :cond_4
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 14
    .param p1    # Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v10, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    if-gez v8, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.feature.folder_type"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.feature.dual_lcd"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v9, :cond_3

    if-nez v8, :cond_3

    if-eqz v1, :cond_3

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-ltz v9, :cond_4

    if-lt v9, v8, :cond_8

    :cond_4
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    iput v10, p1, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    iput v10, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->isRTLLanguage()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    if-ne v0, v10, :cond_6

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    iput v10, p1, Landroid/graphics/Rect;->left:I

    :goto_2
    iget v10, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, 0x4

    iput v10, p1, Landroid/graphics/Rect;->right:I

    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v7

    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    const/16 v11, 0x30

    if-eq v10, v11, :cond_5

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v10

    add-int/2addr v7, v10

    :cond_5
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v5

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v5

    iput v10, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    float-to-int v10, v10

    add-int/lit8 v10, v10, -0x2

    iput v10, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_7
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    float-to-int v10, v10

    add-int/lit8 v10, v10, -0x2

    iput v10, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_8
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    iput v10, p1, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    iput v10, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v3, :cond_9

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, p1, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_9
    iget-boolean v10, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v10, :cond_a

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_a
    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v11, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v10, v9, v8, v11}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_b
    sget-object v11, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v12, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/lit8 v10, v10, -0x1

    iput v10, p1, Landroid/graphics/Rect;->left:I

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x1

    iput v10, p1, Landroid/graphics/Rect;->right:I

    monitor-exit v11

    goto/16 :goto_3

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public getFreezesText()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHideSoftInput()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHoverPopupWindow()Landroid/widget/HoverPopupWindow;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView$MoreInfoHPW;

    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v0, p0, p0, v1}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setHoverPopupWindowSettings(I)Z

    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_0
.end method

.method public getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v1, :cond_1

    iput p1, p0, Landroid/widget/TextView;->mToolType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setHoverPopupWindowSettings(I)Z

    iput p1, p0, Landroid/view/View;->mHoverPopupToolTypeByApp:I

    if-ne p1, v3, :cond_2

    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow;->dismiss()V

    iput-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_1

    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_1

    :pswitch_2
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getImeActionId()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1    # Z

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mIgnoreAccessibility:Z

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIgnoreAccessibility:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .param p1    # I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_0
.end method

.method public getKeycodeDpadCenterStatus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    return v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_0

    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-eq v4, v9, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextEffectOffsetLeft()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getLineAtCoordinate(F)I
    .locals 2
    .param p1    # F

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .param p1    # I
    .param p2    # Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinEms()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinLines()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getMultiSelectionText()Ljava/lang/CharSequence;
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-boolean v6, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v3

    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v2

    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    aget v6, v3, v0

    aget v7, v2, v0

    if-le v6, v7, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    aget v6, v3, v0

    aget v7, v2, v0

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move-object v6, v4

    check-cast v6, Landroid/text/Editable;

    aget v7, v3, v0

    aget v8, v2, v0

    invoke-interface {v5, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    :cond_4
    move-object v6, v4

    goto :goto_0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .param p1    # F
    .param p2    # F

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_2

    iget v9, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v9, v12, :cond_2

    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v9}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v5

    sub-float v8, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    :cond_0
    :goto_0
    :pswitch_0
    return v8

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v9

    if-ne v9, v12, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    iget v9, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v9, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v9, v0, 0x7

    packed-switch v9, :pswitch_data_0

    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v8

    goto :goto_0

    :pswitch_2
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v8, v7

    sub-float v8, v2, v8

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    :pswitch_3
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextEffectOffsetRight()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSelectallStatus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectall:Z

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/graphics/Paint;->shadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 22
    .param p1    # Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    instance-of v2, v15, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Point;->x:I

    sub-int v17, v2, v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Point;->y:I

    sub-int v19, v2, v3

    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v11, :cond_1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    const/4 v12, 0x0

    :cond_0
    :goto_0
    return-object v12

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v15

    check-cast v4, Landroid/text/Spanned;

    const/4 v12, 0x0

    const/4 v2, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, v2, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/ReplacementSpan;

    const/4 v9, 0x0

    :goto_1
    array-length v2, v13

    if-ge v9, v2, :cond_0

    aget-object v2, v13, v9

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    aget-object v2, v13, v9

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ge v5, v11, :cond_3

    if-ge v6, v11, :cond_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v11, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    new-instance v12, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v12, v2, v3, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aget-object v2, v13, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v16

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v2, v14, Landroid/graphics/Point;->x:I

    add-int v2, v2, v20

    iget v3, v14, Landroid/graphics/Point;->y:I

    add-int v3, v3, v16

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getStringName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getTextDirectionHeuristic(Z)Landroid/text/TextDirectionHeuristic;
    .locals 2
    .param p1    # Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextForMultiSelection()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mUseDisplayText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextEffectOffsetTop()I

    move-result v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    goto :goto_0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method getVerticalOffset(Z)I
    .locals 6
    .param p1    # Z

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    :goto_0
    if-ge v3, v0, :cond_1

    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    sub-int v4, v0, v3

    :cond_1
    :goto_1
    return v4

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method public getVisibleTextRange([I)Z
    .locals 9
    .param p1    # [I

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v7, p1

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v8, :cond_4

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_3

    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    aput v7, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    :cond_2
    :goto_1
    move v5, v6

    goto :goto_0

    :cond_3
    aput v5, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    goto :goto_1

    :cond_4
    iget-object v7, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v8, :cond_5

    aput v5, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    goto :goto_1

    :cond_5
    iget-object v7, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v8, :cond_7

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    aput v5, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v6

    if-nez v3, :cond_6

    if-lez v0, :cond_2

    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    aput v7, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    goto :goto_1

    :cond_6
    if-lez v0, :cond_2

    aput v5, p1, v5

    add-int/lit8 v5, v3, 0x1

    aput v5, p1, v6

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_8

    aput v5, p1, v5

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v6

    goto :goto_1

    :cond_8
    aput v5, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    goto :goto_1
.end method

.method public getWBTextBuffer(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Z

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/16 v6, 0x43

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_5

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    :cond_1
    if-eqz v0, :cond_2

    iput-boolean v4, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_6

    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    :cond_2
    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_4

    if-le p3, p4, :cond_7

    iget v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    if-ne v1, v6, :cond_7

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-eq v1, v5, :cond_7

    iput v5, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_3
    :goto_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void

    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto :goto_0

    :cond_6
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1

    :cond_7
    if-ge p3, p4, :cond_8

    iget v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    if-eq v1, v6, :cond_8

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-ne v1, v5, :cond_8

    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2

    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-nez v1, :cond_9

    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2

    :cond_9
    iget v1, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-ne v1, v4, :cond_3

    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2
.end method

.method public hasMultiSelection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelection()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideCursorControllers()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    :cond_0
    return-void
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public initTextStrikeThroughAnim(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method invalidateCursor()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    return-void
.end method

.method invalidateCursorPath()V
    .locals 11

    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-nez v5, :cond_3

    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    const/high16 v5, 0x3f800000

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    const/high16 v3, 0x3f800000

    :cond_2
    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1    # Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_0

    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v10

    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    :cond_0
    :goto_0
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/view/View;->invalidate(IIII)V

    :cond_1
    return-void

    :cond_2
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    goto :goto_0

    :cond_3
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v8, v10

    goto :goto_0

    :cond_4
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    if-lez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move v7, v8

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_3

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    if-ge v5, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    if-ne v8, v7, :cond_4

    if-nez p3, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L

    add-double/2addr v12, v14

    double-to-int v9, v12

    add-int/2addr v6, v4

    add-int/2addr v9, v4

    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    :cond_4
    move v6, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCursorControllersShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->isCursorControllersShowing()Z

    move-result v0

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    goto :goto_0
.end method

.method public isEllipsis()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isEnableMultiSelection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    return v0
.end method

.method public isEnableNewActionPopupWindow()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->isEnableNewActionPopupWindow()Z

    move-result v0

    return v0
.end method

.method isInBatchEditMode()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiSelectionLinkArea(II)Z
    .locals 12
    .param p1    # I
    .param p2    # I

    const/4 v11, 0x0

    iget-boolean v10, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v10, :cond_0

    invoke-direct {p0, p1, p2, v11}, Landroid/widget/TextView;->checkPosInView(III)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    move v10, v11

    :goto_0
    return v10

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_2

    move v10, v11

    goto :goto_0

    :cond_2
    invoke-direct {p0, p0}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int v6, p1, v10

    iget v10, v8, Landroid/graphics/Point;->y:I

    sub-int v7, p2, v10

    int-to-float v10, v7

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    int-to-float v10, v6

    invoke-direct {p0, v1, v10}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v5

    move-object v10, v9

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v4

    move-object v10, v9

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v3

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    aget v10, v4, v0

    if-gt v10, v5, :cond_3

    aget v10, v3, v0

    if-gt v5, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v10, v11

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

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

.method public isPasswordInputTypeCheck()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method public isRTLLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method isSingleLine()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isTextEditable()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    goto :goto_0
.end method

.method public isValidMultiSelection()Z
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mhasMultiSelection:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    const/16 v20, 0x0

    :goto_0
    return v20

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    if-nez v15, :cond_2

    const/16 v20, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-nez v6, :cond_3

    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v20, v15

    check-cast v20, Landroid/text/Spannable;

    invoke-static/range {v20 .. v20}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    check-cast v15, Landroid/text/Spannable;

    invoke-static {v15}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v10

    if-lt v11, v10, :cond_4

    move/from16 v16, v11

    move v11, v10

    move/from16 v10, v16

    :cond_4
    invoke-virtual {v6, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v6, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    invoke-virtual {v6, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v21

    sub-int v14, v20, v21

    invoke-virtual {v6, v10}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v21

    sub-int v5, v20, v21

    invoke-virtual {v6, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    add-int v20, v20, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v21

    sub-int v8, v20, v21

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v20

    add-int v20, v20, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v21

    sub-int v3, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v14, v8, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v20

    if-nez v20, :cond_5

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lcom/samsung/android/penselect/PenSelectionController;->findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_6

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_5
    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 34
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/text/BoringLayout$Metrics;
    .param p4    # Landroid/text/BoringLayout$Metrics;
    .param p5    # I
    .param p6    # Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 p4, v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-gez p1, :cond_0

    const/16 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/16 p2, 0x0

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_f

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v6, v2, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_f

    :cond_2
    const/16 v33, 0x1

    :goto_0
    const/16 v31, 0x0

    if-eqz v33, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v31

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_10

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_11

    const/16 v32, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getTextDirectionHeuristic(Z)Landroid/text/TextDirectionHeuristic;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_12

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v32, :cond_6

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_13

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_14

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_15

    const/4 v7, 0x1

    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    if-eqz v7, :cond_7

    move/from16 p2, p1

    :cond_7
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    if-eqz p4, :cond_8

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_8
    if-eqz p4, :cond_1c

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_17

    if-eqz v7, :cond_9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_17

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_a
    :goto_8
    if-nez p6, :cond_b

    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v0, v31

    if-eq v0, v2, :cond_c

    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_d

    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_1f

    const-string v2, "TextView"

    const-string v3, "LayoutParam is not available."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_e
    return-void

    :cond_f
    const/16 v33, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_11
    const/16 v32, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_13
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_4

    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_17
    if-eqz v7, :cond_19

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_19
    if-eqz v7, :cond_1b

    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_a
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1a
    const v29, 0x7fffffff

    goto :goto_a

    :cond_1b
    new-instance v18, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move/from16 v21, p2

    move-object/from16 v22, v6

    invoke-direct/range {v18 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1c
    if-eqz v7, :cond_1e

    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_b
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1d
    const v29, 0x7fffffff

    goto :goto_b

    :cond_1e
    new-instance v18, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move/from16 v21, p2

    move-object/from16 v22, v6

    invoke-direct/range {v18 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    const/4 v2, -0x2

    move/from16 v0, v30

    if-eq v0, v2, :cond_20

    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_20

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    goto/16 :goto_9

    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_9
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-eq v12, v3, :cond_1

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    div-int/lit8 v15, v16, 0x4

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mScrollY:I

    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    if-ge v7, v11, :cond_6

    move v9, v7

    :goto_2
    if-le v7, v11, :cond_7

    move v4, v7

    :goto_3
    move v10, v12

    if-ge v10, v9, :cond_8

    move v10, v9

    :cond_4
    :goto_4
    if-eq v10, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    :cond_6
    move v9, v11

    goto :goto_2

    :cond_7
    move v4, v11

    goto :goto_3

    :cond_8
    if-le v10, v4, :cond_4

    move v10, v4

    goto :goto_4

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public onAssociatedCheckBoxChecked(ZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z

    iput-boolean p1, p0, Landroid/widget/TextView;->mAssociatedCheckBoxChecked:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000

    iput v0, p0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    invoke-virtual {p0}, Landroid/view/View;->isTextSelectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mAttachedWindow:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->registerForStylusPenEvent()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/widget/TextView$IClipboardDataPasteEventImpl;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    :cond_4
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1    # Landroid/view/inputmethod/CompletionInfo;

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1    # Landroid/view/inputmethod/CorrectionInfo;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->updateShowAsAction()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->showNewActionPopupWindow()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->updateCurrentOrientation(I)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1    # I

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-object v3

    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 8
    .param p1    # Landroid/view/inputmethod/EditorInfo;

    const/high16 v7, 0x40000000

    const/16 v6, 0x82

    const/4 v4, 0x3

    const/high16 v5, 0x8000000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v4, :cond_8

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v3, v3, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v3, v3, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :goto_0
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v3, v4, :cond_6

    invoke-virtual {p0, v6}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v3, v5

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    :goto_1
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_2
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_3

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_7

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v3, v3, 0x5

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v3, v7

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_3
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v3}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v3, v7

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_4
    iget-object v3, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Editable;

    if-eqz v3, :cond_8

    new-instance v1, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    :goto_3
    return-object v1

    :cond_5
    const/4 v3, 0x0

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v6}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v3, v5

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    :cond_7
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v3, v3, 0x6

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isTextSelectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->removeForStylusPenEvent()V

    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1    # Landroid/view/DragEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    move v2, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    if-gez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :pswitch_3
    iput-boolean v2, p0, Landroid/widget/TextView;->mOnDragResult:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->unregisterGestureListener()V

    :cond_5
    iget-boolean v2, p0, Landroid/widget/TextView;->mOnDragResult:Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->unregisterGestureListener()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 42
    .param p1    # Landroid/graphics/Canvas;

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v29

    if-eqz v24, :cond_13

    const/16 v27, 0x0

    :goto_0
    if-eqz v24, :cond_14

    move/from16 v32, v29

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    sub-int v2, v9, v36

    sub-int/2addr v2, v15

    sub-int v39, v2, v18

    sub-int v2, v31, v26

    sub-int v2, v2, v17

    sub-int v23, v2, v16

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    add-int v2, v2, v33

    add-int v2, v2, v27

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move/from16 v41, v0

    sub-int v41, v39, v41

    div-int/lit8 v41, v41, 0x2

    add-int v3, v3, v41

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v31

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v32

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move/from16 v41, v0

    sub-int v41, v39, v41

    div-int/lit8 v41, v41, 0x2

    add-int v3, v3, v41

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingTop:I

    add-int v3, v3, v34

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int v3, v34, v9

    sub-int v3, v3, v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v41, v0

    sub-int v3, v3, v41

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move/from16 v41, v0

    sub-int v3, v3, v41

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    sget-boolean v2, Landroid/widget/TextView;->B_USE_HINT_LIGHT_FONT:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mCurTextTypeface:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintTextTypeface:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    :cond_4
    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mSkipSaveTypeface:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mSkipSaveTypeface:Z

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurTextColor:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v21

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    sub-int v39, v2, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int v28, v2, v39

    add-int v2, v16, v33

    int-to-float v11, v2

    if-nez v34, :cond_17

    const/4 v13, 0x0

    :goto_3
    sub-int v2, v31, v26

    sub-int v2, v2, v17

    add-int v2, v2, v33

    int-to-float v12, v2

    sub-int v2, v9, v36

    add-int v2, v2, v34

    move/from16 v0, v34

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/16 v21, 0x0

    :cond_9
    sub-int v2, v2, v21

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextEffectOffsetLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextEffectOffsetRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextEffectOffsetTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextEffectOffsetBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    :cond_a
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/16 v38, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v38

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v37

    :cond_b
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v3, v22, v38

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v25

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v25

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v2

    if-eqz v2, :cond_d

    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v40, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v30, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-int v3, v40, v30

    int-to-float v3, v3

    sub-float v20, v2, v3

    if-eqz v24, :cond_c

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mBidiFormat:Landroid/text/BidiFormatter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mBidiFormat:Landroid/text/BidiFormatter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_e
    :goto_5
    sub-int v7, v37, v38

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mBidiFormat:Landroid/text/BidiFormatter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mBidiFormat:Landroid/text/BidiFormatter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    move/from16 v0, v20

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :cond_10
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Landroid/util/GateConfig;->isGateLcdtextEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "<GATE-M>LCDSTR:"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v41, "/LCDSTR</GATE-M>"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    if-eqz v2, :cond_12

    invoke-direct/range {p0 .. p1}, Landroid/widget/TextView;->drawTextStrikethrough(Landroid/graphics/Canvas;)V

    :cond_12
    return-void

    :cond_13
    move/from16 v27, v29

    goto/16 :goto_0

    :cond_14
    const/16 v32, 0x0

    goto/16 :goto_1

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mPressTextTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPressTextTypeface:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    goto/16 :goto_2

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSelectTextTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectTextTypeface:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    goto/16 :goto_2

    :cond_17
    add-int v2, v22, v34

    int-to-float v13, v2

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v41, v0

    sub-float v3, v3, v41

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v11, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v41, v0

    add-float v3, v3, v41

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v41, v0

    sub-float v3, v3, v41

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v13, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v41, v0

    add-float v3, v3, v41

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v10, v2

    goto/16 :goto_4

    :cond_19
    move/from16 v0, v20

    neg-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto/16 :goto_6

    :cond_1b
    move/from16 v0, v20

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_7
.end method

.method public onEditorAction(I)V
    .locals 21
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_1

    const/16 v17, 0x0

    :goto_0
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_2

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v5}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v17, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_0

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method public onEndBatchEdit()V
    .locals 0

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1    # Z
    .param p2    # I
    .param p3    # Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 42
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v31

    sput-object p0, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    sput-wide v38, Landroid/widget/TextView;->mLastHoveredTime:J

    if-eqz v31, :cond_23

    sget v38, Landroid/widget/TextView;->sSpenUspLevel:I

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v38

    and-int/lit8 v38, v38, 0x2

    if-eqz v38, :cond_3

    const/16 v18, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/widget/TextView;->isHoveringSettingEnabled(I)Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableHoverPreview:Z

    const/16 v38, 0x9

    move/from16 v0, v38

    if-ne v4, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canTextMultiSelection()Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCanTextMultiSelection:Z

    :cond_0
    const/16 v38, 0xa

    move/from16 v0, v38

    if-ne v4, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/text/style/HoverableSpan;

    move/from16 v38, v0

    if-eqz v38, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/text/style/HoverableSpan;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/HoverableSpan;->onHoverExit(Landroid/view/View;)V

    :cond_1
    :goto_1
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v38

    if-eqz v38, :cond_2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_0
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    :goto_3
    return v38

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_1
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v17

    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHoverExit **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v7

    const-string v38, "TextView"

    const-string v39, "Failed to change Pen Point to HOVERING_SPENICON_HOVERPOPUP_DEFAULT"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mEnableHoverPreview:Z

    move/from16 v38, v0

    if-nez v38, :cond_6

    if-nez v18, :cond_6

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto :goto_3

    :cond_6
    const/16 v38, 0x7

    move/from16 v0, v38

    if-ne v4, v0, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v19

    if-nez v19, :cond_7

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v24, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mCanTextMultiSelection:Z

    move/from16 v38, v0

    if-eqz v38, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->TOUCH_DELTA:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->checkPosOnText(III)Z

    move-result v38

    if-eqz v38, :cond_b

    invoke-static {}, Landroid/text/MultiSelection;->getHoveredIcon()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_9

    new-instance v38, Landroid/widget/TextView$3;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/text/style/HoverableSpan;

    move/from16 v38, v0

    if-eqz v38, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/text/style/HoverableSpan;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/HoverableSpan;->onHoverExit(Landroid/view/View;)V

    :cond_8
    :goto_4
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :cond_a
    :try_start_3
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v17

    const-string v38, "TextView"

    const-string v39, "** hovering dismiss **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    invoke-static {}, Landroid/text/MultiSelection;->getHoveredIcon()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_4
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_c
    :goto_6
    move-object/from16 v38, v31

    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v40

    const-class v41, Landroid/text/style/HoverableSpan;

    invoke-interface/range {v38 .. v41}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/HoverableSpan;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v38, v0

    if-eqz v38, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v38

    sub-int v36, v36, v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v38

    sub-int v37, v37, v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v38

    add-int v36, v36, v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v38

    add-int v37, v37, v38

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-virtual {v0, v6, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v22

    move-object/from16 v38, v31

    check-cast v38, Landroid/text/Spannable;

    const-class v39, Landroid/text/style/HoverableSpan;

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v22

    move-object/from16 v3, v39

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/HoverableSpan;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v38, v0

    if-eqz v38, :cond_14

    move-object/from16 v38, v31

    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    aget-object v39, v20, v39

    invoke-interface/range {v38 .. v39}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v30

    check-cast v31, Landroid/text/Spannable;

    const/16 v38, 0x0

    aget-object v38, v20, v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v26

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    const/16 v29, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    if-ne v6, v0, :cond_f

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v29, v0

    :goto_7
    if-ne v6, v8, :cond_10

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    :goto_8
    move/from16 v0, v29

    move/from16 v1, v36

    if-gt v0, v1, :cond_13

    move/from16 v0, v36

    move/from16 v1, v28

    if-gt v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-object v39, v20, v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverEnterTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-lez v38, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverEnterTime:J

    move-wide/from16 v40, v0

    sub-long v9, v38, v40

    const-wide/16 v38, 0x12c

    cmp-long v38, v9, v38

    if-lez v38, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/text/style/HoverableSpan;

    move/from16 v38, v0

    if-eqz v38, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/text/style/HoverableSpan;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/HoverableSpan;->onHoverExit(Landroid/view/View;)V

    :cond_d
    :goto_9
    const/16 v38, 0x0

    aget-object v38, v20, v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    const/16 v38, 0x0

    aget-object v38, v20, v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/HoverableSpan;->onHoverEnter(Landroid/view/View;)V

    :cond_e
    :goto_a
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :cond_f
    const/16 v38, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v29, v0

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto/16 :goto_8

    :cond_11
    :try_start_5
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v17

    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHover : hoverspan1 **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    new-instance v38, Landroid/widget/TextView$4;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_13
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    goto :goto_a

    :cond_14
    move-object/from16 v38, v31

    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v40

    const-class v41, Landroid/text/style/URLSpan;

    invoke-interface/range {v38 .. v41}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [Landroid/text/style/URLSpan;

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v38, v0

    if-eqz v38, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v38

    sub-int v36, v36, v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v38

    sub-int v37, v37, v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v38

    add-int v36, v36, v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v38

    add-int v37, v37, v38

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-virtual {v0, v6, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v22

    move-object/from16 v38, v31

    check-cast v38, Landroid/text/Spannable;

    const-class v39, Landroid/text/style/URLSpan;

    move-object/from16 v0, v38

    move/from16 v1, v22

    move/from16 v2, v22

    move-object/from16 v3, v39

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/URLSpan;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v38, v0

    if-eqz v38, :cond_1f

    move-object/from16 v38, v31

    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    aget-object v39, v20, v39

    invoke-interface/range {v38 .. v39}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v30

    move-object/from16 v38, v31

    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    aget-object v39, v20, v39

    invoke-interface/range {v38 .. v39}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-interface {v0, v1, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    sget-object v38, Landroid/widget/TextView;->emailPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v38

    if-eqz v38, :cond_15

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :cond_15
    sget-object v38, Landroid/widget/TextView;->urlPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v38

    if-nez v38, :cond_16

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v26

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    const/16 v29, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    if-ne v6, v0, :cond_1a

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v29, v0

    :goto_b
    if-ne v6, v8, :cond_1b

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    :goto_c
    move/from16 v0, v29

    move/from16 v1, v36

    if-gt v0, v1, :cond_1e

    move/from16 v0, v36

    move/from16 v1, v28

    if-gt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-object v39, v20, v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverEnterTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-lez v38, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverEnterTime:J

    move-wide/from16 v40, v0

    sub-long v9, v38, v40

    const-wide/16 v38, 0x12c

    cmp-long v38, v9, v38

    if-lez v38, :cond_19

    const/4 v14, 0x0

    :try_start_6
    new-instance v15, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v15, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v14, v15

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/text/style/HoverableSpan;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/text/style/HoverableSpan;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/HoverableSpan;->onHoverExit(Landroid/view/View;)V

    :cond_17
    :goto_e
    const/16 v38, 0x0

    aget-object v38, v20, v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    if-eqz v14, :cond_19

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    new-instance v27, Landroid/graphics/PointF;

    const/high16 v38, 0x3f800000

    const/high16 v39, 0x3f800000

    move-object/from16 v0, v27

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v35, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isScaleWindow()Z

    move-result v38

    if-eqz v38, :cond_18

    if-eqz v35, :cond_18

    throw v35

    move-result-object v27

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v38

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v38, v38, v39

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    mul-float v13, v38, v39

    int-to-float v0, v5

    move/from16 v38, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v39

    sub-float v38, v38, v39

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    mul-float v12, v38, v39

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v38, v0

    add-float v38, v38, v12

    move/from16 v0, v38

    float-to-int v5, v0

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    add-int/lit8 v38, v23, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v32

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_19

    const/16 v38, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    move/from16 v2, v38

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager;->showHermes(Ljava/lang/String;Landroid/graphics/Rect;I)V

    :cond_19
    :goto_f
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :cond_1a
    const/16 v38, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v29, v0

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto/16 :goto_c

    :catch_5
    move-exception v17

    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHover : URLSpan1 **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1c
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V

    goto/16 :goto_e

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    new-instance v38, Landroid/widget/TextView$5;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$5;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    :cond_1e
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    goto :goto_f

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverExitTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-lez v38, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverExitTime:J

    move-wide/from16 v40, v0

    sub-long v9, v38, v40

    const-wide/16 v38, 0x12c

    cmp-long v38, v9, v38

    if-lez v38, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    instance-of v0, v0, Landroid/text/style/HoverableSpan;

    move/from16 v38, v0

    if-eqz v38, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/text/style/HoverableSpan;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/HoverableSpan;->onHoverExit(Landroid/view/View;)V

    :goto_10
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    :cond_20
    :goto_11
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :cond_21
    :try_start_7
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_10

    :catch_6
    move-exception v17

    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHover : hover exit **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_8
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_11

    :catch_7
    move-exception v7

    const-string v38, "TextView"

    const-string v39, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_23
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_8
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v11, 0x14

    const/16 v10, 0x13

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xe8

    if-ne p1, v7, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "clipboardEx"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    iget-object v9, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v2, v7, v8, v9}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v7, "TextView"

    const-string v8, "clip board is not shown"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-eqz v7, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return v6

    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_1

    const v6, 0x102001f

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v6

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v7

    if-eqz v7, :cond_1

    const v6, 0x1020020

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v6

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v7

    if-eqz v7, :cond_1

    const v6, 0x1020021

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v6

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    if-eqz v7, :cond_1

    const v6, 0x1020022

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v6

    goto :goto_0

    :cond_2
    if-eq p1, v10, :cond_3

    if-eq p1, v11, :cond_3

    const/16 v7, 0x15

    if-eq p1, v7, :cond_3

    const/16 v7, 0x16

    if-ne p1, v7, :cond_7

    :cond_3
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    :cond_4
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    :cond_5
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v4, v7, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_7

    iput-boolean v6, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, v7}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v5

    if-nez v5, :cond_1

    const/16 v1, 0x102

    const/4 v0, 0x6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    const/16 v8, 0x102

    if-ne v7, v8, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_8

    move v4, v6

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_9

    if-eqz v4, :cond_9

    if-eq p1, v10, :cond_1

    if-eq p1, v11, :cond_1

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    if-ne v2, v4, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_1

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x102001f

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1020021

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1020022

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canTranslate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->isTranslatorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10202c5

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canDelete()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10202c8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10202ca

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10202c9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x20 -> :sswitch_5
        0x30 -> :sswitch_4
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
        0x35 -> :sswitch_6
        0x36 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v8, 0x82

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_1

    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_3

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_5

    :cond_3
    iget-boolean v5, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    and-int/lit8 v5, v0, 0x7

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-le v3, v1, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_5
    iput-boolean v7, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    goto :goto_0

    :sswitch_0
    iput-boolean v7, p0, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    if-nez v5, :cond_6

    invoke-virtual {v2, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->showInsertionController()V

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v5, v5, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v5, v5, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v5, Landroid/widget/Editor$InputContentType;->enterDown:Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v5, v5, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v5, p0, v7, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_8

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v8}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v5, v6

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_b

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_d

    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    goto/16 :goto_0

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1    # I
    .param p2    # I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_0
    const/4 v9, -0x1

    const/4 v12, 0x0

    const/high16 v2, 0x40000000

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    move/from16 v24, v27

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v24, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    move/from16 v23, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x100000

    :cond_2
    move v4, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    move/from16 v17, v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v24, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_3
    :goto_2
    const/high16 v2, 0x40000000

    if-ne v14, v2, :cond_22

    move v13, v15

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v22, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v23

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_23

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v20

    if-eqz v20, :cond_24

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Typeface;->getStyle()I

    move-result v21

    :goto_5
    const/high16 v2, 0x40000000

    move/from16 v0, v26

    if-eq v0, v2, :cond_7

    and-int/lit8 v2, v21, 0x2

    if-eqz v2, :cond_7

    move/from16 v0, v24

    int-to-double v7, v0

    const-wide v28, 0x3f9999999999999aL

    mul-double v7, v7, v28

    double-to-int v2, v7

    add-int v24, v24, v2

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    :cond_9
    if-gez v9, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_14

    :cond_b
    if-gez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v9, v2

    :cond_c
    move/from16 v24, v9

    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v11, :cond_d

    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v16

    :cond_e
    if-gez v16, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_f
    if-eqz v6, :cond_10

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_15

    :cond_10
    if-gez v16, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    :cond_11
    move/from16 v17, v16

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_12

    move/from16 v24, v17

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v24, v24, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    const/high16 v2, -0x80000000

    move/from16 v0, v26

    if-ne v0, v2, :cond_1

    move/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto/16 :goto_0

    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_6

    :cond_14
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v24, v0

    goto/16 :goto_7

    :cond_15
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v17, v0

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v17

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_1a

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v24, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1e

    :cond_1a
    const/16 v18, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1b

    if-eqz v12, :cond_1f

    if-ltz v9, :cond_1f

    if-gt v9, v3, :cond_1f

    :cond_1b
    const/16 v25, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_20

    :cond_1c
    const/16 v19, 0x1

    :goto_d
    if-nez v18, :cond_1d

    if-eqz v19, :cond_3

    :cond_1d
    if-nez v19, :cond_21

    if-eqz v25, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    :cond_1e
    const/16 v18, 0x0

    goto :goto_b

    :cond_1f
    const/16 v25, 0x0

    goto :goto_c

    :cond_20
    const/16 v19, 0x0

    goto :goto_d

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v24, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->initSelectControllersPosition()V

    goto/16 :goto_2

    :cond_22
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    move v13, v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/high16 v2, -0x80000000

    if-ne v14, v2, :cond_4

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_3

    :cond_23
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_4

    :cond_24
    const/16 v21, 0x0

    goto/16 :goto_5
.end method

.method public onMultiSelectMenuItem(I)Z
    .locals 13
    .param p1    # I

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v9, p0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v8, "TextView"

    const-string v9, "getTextFormultiSelection() text is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v7

    :cond_1
    const v9, 0x10202cb

    if-eq p1, v9, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    :cond_2
    if-nez v5, :cond_3

    const-string v8, "TextView"

    const-string v9, "Multi Selected Text String is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-array v3, v12, [I

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v1

    if-nez v1, :cond_4

    aput v7, v3, v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    aput v9, v3, v8

    :cond_4
    check-cast v6, Landroid/text/Spannable;

    aget v7, v3, v7

    aget v9, v3, v8

    invoke-static {v6, v7, v9}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    invoke-direct {p0}, Landroid/widget/TextView;->showMultiSelectPopupWindow()V

    move v7, v8

    goto :goto_0

    :pswitch_2
    iget-object v9, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v9, v8}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->playCopyVibrator()Z

    move v7, v8

    goto :goto_0

    :pswitch_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v5, v7, v9}, Landroid/widget/TextView;->sendToDictionary(Ljava/lang/String;II)V

    move v7, v8

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->sendToTranslate(Ljava/lang/String;)V

    move v7, v8

    goto :goto_0

    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/util/GeneralUtil;->isThemeDark(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "theme"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    :goto_1
    const-string/jumbo v7, "text/plain"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x1040895

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v7, v8

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "theme"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x10202cb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_2
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v3, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_4
    instance-of v1, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v3, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    const/4 v1, 0x1

    return v1

    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x0

    return v0
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1    # Landroid/os/Parcelable;

    instance-of v5, p1, Landroid/widget/TextView$SavedState;

    if-nez v5, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView$SavedState;

    invoke-virtual {v4}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iget-object v3, v4, Landroid/widget/TextView$SavedState;->locale:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->getCurrentLocaleAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, p0, Landroid/widget/EditText;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->caller:Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v4, Landroid/widget/TextView$SavedState;->caller:Ljava/lang/CharSequence;

    iput-object v6, v5, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    :cond_4
    iget v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v5, :cond_7

    iget v5, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v5, v1, :cond_5

    iget v5, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v5, v1, :cond_8

    :cond_5
    const-string v2, ""

    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    const-string v2, "(restored) "

    :cond_6
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_7

    const-string v5, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved cursor position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out of range for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCaller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v0, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    new-instance v5, Landroid/widget/TextView$1;

    invoke-direct {v5, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    iget v6, v4, Landroid/widget/TextView$SavedState;->selStart:I

    iget v7, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-boolean v5, v4, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v5, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1    # I

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    iget-boolean v12, p0, Landroid/view/View;->mIsWritingBuddyEnabled:Z

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-eqz v12, :cond_4

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    instance-of v12, p0, Landroid/widget/SearchView$SearchAutoComplete;

    if-eqz v12, :cond_4

    :cond_0
    new-instance v9, Landroid/widget/TextView$SavedState;

    invoke-direct {v9, v11}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    instance-of v12, v12, Landroid/text/Spanned;

    if-eqz v12, :cond_3

    new-instance v8, Landroid/text/SpannableString;

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-direct {v8, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v13

    const-class v14, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v8, v12, v13, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-interface {v8, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v8, v9, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    :goto_1
    iput v7, v9, Landroid/widget/TextView$SavedState;->selStart:I

    iput v6, v9, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_2

    if-ltz v7, :cond_2

    if-ltz v6, :cond_2

    const/4 v12, 0x1

    iput-boolean v12, v9, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    :cond_2
    const-string v12, "TextView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WB.saveInstance : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v9

    :cond_3
    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gez v10, :cond_5

    if-ltz v2, :cond_6

    :cond_5
    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_a

    new-instance v9, Landroid/widget/TextView$SavedState;

    invoke-direct {v9, v11}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iput v10, v9, Landroid/widget/TextView$SavedState;->selStart:I

    iput v2, v9, Landroid/widget/TextView$SavedState;->selEnd:I

    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v12, v12, Landroid/text/Spanned;

    if-eqz v12, :cond_9

    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v8, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_7

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    iget-object v12, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v8, v12}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_7
    iput-object v8, v9, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    :goto_3
    invoke-direct {p0}, Landroid/widget/TextView;->getCurrentLocaleAsString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->locale:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_8

    if-ltz v10, :cond_8

    if-ltz v2, :cond_8

    const/4 v12, 0x1

    iput-boolean v12, v9, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_9
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_a
    move-object v9, v11

    goto :goto_2
.end method

.method public onScreenStateChanged(I)V
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/view/View;->mIsWritingBuddyEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    and-int/lit16 v2, v2, 0xff0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->applyWBTextBuffer(Z)Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-boolean v0, p0, Landroid/widget/TextView;->mIgnoreAccessibility:Z

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    :cond_1
    return-void
.end method

.method public onStrikeThroughAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onStrikeThroughAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onStrikeThroughAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 14
    .param p1    # I

    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_0
    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    move v10, v11

    :cond_1
    :goto_0
    return v10

    :sswitch_0
    iput-boolean v10, p0, Landroid/widget/TextView;->mSelectall:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    new-instance v11, Landroid/widget/TextView$7;

    invoke-direct {v11, p0}, Landroid/widget/TextView$7;-><init>(Landroid/widget/TextView;)V

    const-wide/16 v12, 0xfa0

    invoke-virtual {p0, v11, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :sswitch_1
    const/4 v11, 0x3

    iput v11, p0, Landroid/widget/TextView;->mLastAction:I

    iget-boolean v11, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_2
    invoke-direct {p0, v5, v4}, Landroid/widget/TextView;->paste(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->playPasteVibrator()Z

    goto :goto_0

    :sswitch_2
    iget-object v12, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v12, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v12

    if-nez v12, :cond_3

    move v10, v11

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    iget-boolean v11, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v11, :cond_4

    iput v13, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_4
    invoke-virtual {p0, v5, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->playCopyVibrator()Z

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_0

    :sswitch_3
    iget-object v12, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v12, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v12

    if-nez v12, :cond_5

    move v10, v11

    goto :goto_0

    :cond_5
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->playCopyVibrator()Z

    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "clipboardEx"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    iget-object v13, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v1, v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v11, "TextView"

    const-string v12, "clip board is not shown"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_5
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->stopSelectionActionMode()V

    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11, v9, v5, v4}, Landroid/widget/Editor;->translateRegister(Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "text/plain"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v8, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v11, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/util/GeneralUtil;->isThemeDark(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string/jumbo v11, "theme"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x1040895

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v11, "theme"

    invoke-virtual {v8, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :sswitch_7
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "new_search"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v11, "query"

    invoke-virtual {v8, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v11, 0x10000000

    :try_start_1
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v11

    goto/16 :goto_0

    :sswitch_8
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->stopSelectionActionMode()V

    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11, v9, v5, v4}, Landroid/widget/Editor;->sendToDictionary(Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_9
    iget-boolean v11, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v11, :cond_8

    iput v13, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_8
    invoke-virtual {p0, v5, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0}, Landroid/widget/TextView;->runRedo()Z

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Landroid/widget/TextView;->runUndo()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_3
        0x1020022 -> :sswitch_1
        0x10202c4 -> :sswitch_4
        0x10202c5 -> :sswitch_5
        0x10202c6 -> :sswitch_6
        0x10202c7 -> :sswitch_8
        0x10202c8 -> :sswitch_9
        0x10202c9 -> :sswitch_b
        0x10202ca -> :sswitch_a
        0x102049f -> :sswitch_7
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v7, :cond_2

    if-ne v0, v8, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_1
    :goto_0
    return v4

    :cond_2
    if-ne v0, v8, :cond_c

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v7, :cond_c

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_c

    move v6, v8

    :goto_1
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-nez v7, :cond_6

    :cond_5
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v10, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v1, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v6, :cond_7

    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v7, :cond_7

    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    array-length v7, v3

    if-lez v7, :cond_7

    aget-object v7, v3, v9

    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v1, 0x1

    :cond_7
    if-eqz v6, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v5, :cond_b

    :cond_8
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-nez v5, :cond_a

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    if-nez v7, :cond_a

    if-eqz v2, :cond_9

    invoke-virtual {v2, p0, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_9

    move v9, v8

    :cond_9
    or-int/2addr v1, v9

    :cond_a
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    :cond_b
    if-eqz v1, :cond_1

    move v4, v8

    goto/16 :goto_0

    :cond_c
    move v6, v9

    goto/16 :goto_1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 7
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x1020021

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x1020022

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x1020020

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    const-string v6, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    if-eqz p2, :cond_6

    const-string v6, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-ne v6, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-eq v6, v0, :cond_9

    :cond_4
    if-ne v1, v0, :cond_7

    if-ne v0, v3, :cond_7

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    move v3, v4

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    if-ltz v1, :cond_9

    if-gt v1, v0, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v0, v3, :cond_9

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_8
    move v3, v4

    goto/16 :goto_0

    :cond_9
    move v3, v5

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4000 -> :sswitch_0
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/view/View;->mTwHapticFeedbackPerformed:Z

    if-nez v1, :cond_2

    sget v1, Landroid/widget/TextView;->sSpenUspLevel:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    iput-boolean v3, p0, Landroid/view/View;->mTwHapticFeedbackPerformed:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return v0
.end method

.method public performWBEditorAction(I)V
    .locals 21
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_3

    const/16 v17, 0x0

    :goto_0
    if-eqz v17, :cond_9

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v5}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    :cond_0
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_1
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    const/16 v2, 0x82

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move-object/from16 v2, v19

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v2}, Landroid/widget/TextView;->requestWritingBuddy()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v17, v0

    goto :goto_0

    :cond_4
    const/16 v2, 0x82

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    const/16 v2, 0x21

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    move-object/from16 v2, v19

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v2}, Landroid/widget/TextView;->requestWritingBuddy()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_6
    const/16 v2, 0x21

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :cond_8
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method public playCopyVibrator()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView$PenSelectVibrator;->playVibrator(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playPasteVibrator()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView$PenSelectVibrator;->playVibrator(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playPenSelectionVibrator()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mIsTouchDown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    invoke-virtual {v1, v0}, Landroid/widget/TextView$PenSelectVibrator;->playVibrator(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;

    const/16 v6, 0xa

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-lez p1, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    add-int/2addr p1, v2

    add-int/2addr p2, v2

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p2, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    :cond_1
    :goto_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v1, v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v0, v6, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, " "

    invoke-virtual {p0, p1, p1, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    add-int/2addr p1, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, v6, :cond_1

    const-string v4, " "

    invoke-virtual {p0, p2, p2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public registerForTouchMonitorListener()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Landroid/widget/TextView;->sSpenUspLevel:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->removeForTouchMonitorListener()V

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView$TouchMonitorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    sput-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    sget-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$MotionEventMonitor;->registerMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V

    goto :goto_0
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1    # I

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    array-length v1, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p1, :cond_2

    if-ne v3, p1, :cond_3

    :cond_2
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeForTouchMonitorListener()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$MotionEventMonitor;->unregisterMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V

    const/4 v2, 0x0

    sput-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    goto :goto_0
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p1    # Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;

    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1    # Landroid/text/TextWatcher;

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeTextEffect(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->removeTextEffect(I)V

    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    return-void
.end method

.method runRedo()Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    const/4 v2, 0x5

    iput v2, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5, v2, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    iget v3, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iget v4, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget v2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v2, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iput v2, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v0, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iget-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    iput v5, p0, Landroid/widget/TextView;->mLastAction:I

    const/4 v2, 0x1

    return v2
.end method

.method runUndo()Z
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    if-ne v3, v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/TextView;->mLastAction:I

    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6, v3, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    iget v4, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iget v5, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget v3, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v3, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iput v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    iput v2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v0, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iget-object v3, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput v7, p0, Landroid/widget/TextView;->mLastAction:I

    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    iput v6, p0, Landroid/widget/TextView;->mLastAction:I

    goto :goto_0
.end method

.method savePreText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iput v1, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method savePreText(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    move-result v0

    iput p2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iput p3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    return v0
.end method

.method saveRedoText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v1, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method saveUndoText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v1, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method saveUndoText(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;)Z

    move-result v0

    iput p2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput p3, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    return v0
.end method

.method selectAllText()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showNewActionPopupWindow()V

    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1    # I

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1    # Landroid/text/Editable;

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/TextView;->mChangedText:Z

    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v7, 0x0

    iput p4, p0, Landroid/widget/TextView;->mChangedSize:I

    iget-object v4, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/TextWatcher;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    iget-boolean v4, p0, Landroid/widget/TextView;->mUseDisplayText:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    if-nez v4, :cond_2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    iget-object v4, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_1

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v4, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    iget-object v5, p0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const v6, 0x640012

    invoke-interface {v3, v4, v7, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iput-boolean v7, p0, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    :cond_3
    return-void
.end method

.method public sendToDictionary(Ljava/lang/String;II)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/16 v5, 0x20

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "force"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public sendToTranslate(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;

    const-string v0, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "source_text"

    const-string v1, "auto_start_translation"

    const-string v2, "client_id"

    const-string/jumbo v5, "viewer"

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "mode"

    const-string/jumbo v8, "viewer"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "source_text"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "auto_start_translation"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "client_id"

    const-string v8, "XGPPDdj5SG"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v1

    if-ne v1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideControllers()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Landroid/graphics/drawable/Drawable;
    .param p4    # Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_9

    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_4

    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    :cond_9
    if-nez v1, :cond_a

    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v4, v5, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_b
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_e
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_f

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :goto_2
    if-eqz p3, :cond_10

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_3
    if-eqz p2, :cond_11

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    :goto_4
    if-eqz p4, :cond_12

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_2

    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_3

    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    :cond_12
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Landroid/graphics/drawable/Drawable;
    .param p4    # Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    move v2, v5

    :goto_0
    if-nez v2, :cond_8

    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_3

    iput-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    :cond_8
    if-nez v1, :cond_9

    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_9
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_e

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    :goto_2
    if-eqz p3, :cond_f

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    :goto_3
    if-eqz p2, :cond_10

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    :goto_4
    if-eqz p4, :cond_11

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    :cond_e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Landroid/graphics/drawable/Drawable;
    .param p4    # Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Landroid/graphics/drawable/Drawable;
    .param p4    # Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCursorColor(I)V
    .locals 1
    .param p1    # I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v0, 0x10800b4

    iput v0, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, -0x1000000

    if-ne p1, v0, :cond_0

    const v0, 0x10800b5

    iput v0, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto :goto_0
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1    # Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public setDeviceDefaultTheme(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setDeviceDefaultTheme(Z)V

    :cond_0
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1    # Landroid/text/Editable$Factory;

    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1    # Landroid/text/TextUtils$TruncateAt;

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_1

    iput v1, p0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    iput v1, p0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;II)V
    .locals 1
    .param p1    # Landroid/text/TextUtils$TruncateAt;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput p2, p0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    iput p3, p0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setEms(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1    # Z

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .param p1    # Landroid/view/inputmethod/ExtractedText;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    if-nez v1, :cond_4

    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-gez v4, :cond_8

    const/4 v4, 0x0

    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v2, :cond_9

    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    instance-of v5, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_a

    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    :goto_3
    return-void

    :cond_4
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_5

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-le v4, v0, :cond_6

    move v4, v0

    :cond_6
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le v2, v0, :cond_7

    move v2, v0

    :cond_7
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_8
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_9
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_a
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1    # Landroid/view/inputmethod/ExtractedTextRequest;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1    # [Landroid/text/InputFilter;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1    # I

    const v4, 0x800007

    and-int v0, p1, v4

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    const/4 v7, 0x0

    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    const/4 v7, 0x1

    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_3
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 11
    .param p1    # I

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    const/4 v0, 0x0

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v7

    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    if-nez v2, :cond_2

    move v8, v7

    :cond_2
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    :cond_4
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    :cond_5
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_6
    return-void

    :cond_7
    if-eqz v3, :cond_8

    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_0

    :cond_9
    const/4 v9, 0x0

    invoke-direct {p0, v9, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v4, v8

    goto :goto_1
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1    # Landroid/text/method/KeyListener;

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_1
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1    # F
    .param p2    # F

    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1    # Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setNewActionPopupMenu(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setNewActionPopupMenu(IZ)V

    :cond_0
    return-void
.end method

.method public setOnDragResult(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/TextView;->mOnDragResult:Z

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1    # Landroid/widget/TextView$OnEditorActionListener;

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1    # I

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    goto :goto_0
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1    # Landroid/widget/Scroller;

    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1    # Z

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # I

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    if-lt p3, p2, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1    # Landroid/text/Spannable$Factory;

    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStrikeThroughAnimationEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    return-void
.end method

.method public final setStringName(I)V
    .locals 1
    .param p1    # I

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public final setStringName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->fromResLock:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/widget/TextView$BufferType;

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Landroid/widget/TextView$BufferType;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .param p1    # [C
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 40
    .param p1    # Landroid/content/Context;
    .param p2    # I

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v17

    const/4 v5, 0x4

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_0
    const/4 v5, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v38

    if-eqz v38, :cond_2

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/TextView;->setRawTextSize(F)V

    :cond_2
    const/4 v5, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const/4 v5, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    const/16 v5, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v5, 0x1

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v39

    const/4 v5, 0x2

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v39

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    const/16 v24, -0x1

    const/16 v26, -0x1

    const/16 v29, -0x1

    const/16 v5, 0xd

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v5, 0x10

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    const/16 v5, 0xe

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v5, 0x11

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    const/16 v5, 0xf

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v5, 0x12

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    sget-boolean v5, Landroid/widget/TextView;->B_USE_HINT_LIGHT_FONT:Z

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    move/from16 v0, v39

    if-ne v0, v5, :cond_5

    if-nez v23, :cond_5

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-nez v5, :cond_5

    const-string/jumbo v23, "sec-roboto-light"

    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    const/4 v5, 0x7

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    if-eqz v36, :cond_6

    const/16 v5, 0x8

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    const/16 v5, 0x9

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    const/16 v5, 0xa

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_6
    const/16 v5, 0x16

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    if-eqz v9, :cond_7

    const/16 v5, 0x13

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/16 v5, 0x14

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/16 v5, 0x15

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    const/16 v5, 0x17

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    :cond_7
    const/16 v5, 0x1b

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    if-eqz v15, :cond_8

    const/16 v5, 0x18

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    const/16 v5, 0x19

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    const/16 v5, 0x1a

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    const/16 v5, 0x1c

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Landroid/widget/TextView;->addInnerShadowTextEffect(FFFIF)I

    :cond_8
    const/16 v5, 0x1e

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v33

    if-eqz v33, :cond_9

    const/16 v5, 0x1d

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v35

    const/16 v5, 0x1f

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    :cond_9
    const/16 v5, 0x23

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    if-eqz v30, :cond_a

    const/16 v5, 0x22

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    const/16 v5, 0x24

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    :cond_a
    const/16 v5, 0xb

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextEffectOpacity(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextEffectOpacity(F)V

    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x3

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isTextSelectionEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    if-ne v0, v1, :cond_4

    :cond_2
    if-nez p1, :cond_3

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    if-ne v0, v1, :cond_4

    :cond_3
    iget-boolean v0, p0, Landroid/widget/TextView;->mAttachedWindow:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->registerForStylusPenEvent()V

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_5

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_2
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Landroid/widget/TextView$BufferType;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1    # Ljava/util/Locale;

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1    # I
    .param p2    # F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .param p1    # Landroid/text/method/TransformationMethod;

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/text/method/TransformationMethod2;

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    :goto_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-boolean v0, p0, Landroid/widget/TextView;->mSkipSaveTypeface:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/widget/TextView;->mCurTextTypeface:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1    # Landroid/graphics/Typeface;
    .param p2    # I

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000

    :goto_2
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :goto_3
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTypefaceForState(Ljava/lang/String;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sans-serif-light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "sec-roboto-light"

    const/4 p2, 0x0

    :cond_0
    :goto_0
    packed-switch p3, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sans-serif-medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "sec-roboto-light"

    const/4 p2, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mPressTextTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_2
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mSelectTextTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/UndoManager;
    .param p2    # Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1, p2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    new-instance v1, Landroid/widget/Editor$UndoInputFilter;

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-direct {v1, v2}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v1, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    goto :goto_0
.end method

.method public setWBPositionListenerEnalbed(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setWBPositionListenerEnalbed(Z)V

    :cond_0
    return-void
.end method

.method public setWBTextBuffer(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showInsertionCursorController(Z)V
    .locals 3
    .param p1    # Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput-boolean p1, p0, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TextView"

    const-string v2, "insertion"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopSelectionActionMode()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showInsertionPointCursorController()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "TextView"

    const-string/jumbo v2, "selection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 9
    .param p1    # Landroid/text/Spanned;
    .param p2    # Ljava/lang/Object;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x1

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v6, :cond_19

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    sget-object v6, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    if-ne p2, v6, :cond_1

    const/4 v2, 0x1

    move v3, p4

    if-gez p3, :cond_0

    if-ltz p4, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-direct {p0, v6, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->makeBlink()V

    :cond_1
    sget-object v6, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    if-ne p2, v6, :cond_3

    const/4 v2, 0x1

    move v4, p4

    if-gez p3, :cond_2

    if-ltz p4, :cond_3

    :cond_2
    invoke-static {p1}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    :cond_3
    if-eqz v2, :cond_4

    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v8, v6, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_4
    sget-object v6, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v6, :cond_6

    const/4 v5, 0x1

    move v3, p4

    if-gez p3, :cond_5

    if-ltz p4, :cond_6

    :cond_5
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-direct {p0, v6, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->makeBlink()V

    :cond_6
    sget-object v6, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v6, :cond_8

    const/4 v5, 0x1

    move v4, p4

    if-gez p3, :cond_7

    if-ltz p4, :cond_8

    :cond_7
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    :cond_8
    if-eqz v5, :cond_c

    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v8, v6, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_9
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_c

    if-gez v4, :cond_a

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    :cond_a
    if-gez v3, :cond_b

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    :cond_b
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->onSelectionChanged(II)V

    :cond_c
    instance-of v6, p2, Landroid/text/style/UpdateAppearance;

    if-nez v6, :cond_d

    instance-of v6, p2, Landroid/text/style/ParagraphStyle;

    if-nez v6, :cond_d

    instance-of v6, p2, Landroid/text/style/CharacterStyle;

    if-eqz v6, :cond_10

    :cond_d
    if-eqz v1, :cond_e

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_1a

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    :goto_1
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_10

    if-ltz p3, :cond_f

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v7, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_f
    if-ltz p4, :cond_10

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v7, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_10
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v1, :cond_11

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    :cond_11
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    if-ltz v6, :cond_13

    if-eqz v1, :cond_12

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_1b

    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_13
    :goto_2
    instance-of v6, p2, Landroid/text/ParcelableSpan;

    if-eqz v6, :cond_17

    if-eqz v1, :cond_17

    iget-object v6, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v6, :cond_17

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v6, :cond_1c

    if-ltz p3, :cond_15

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p3, :cond_14

    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_14
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p5, :cond_15

    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_15
    if-ltz p4, :cond_17

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p4, :cond_16

    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_16
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p6, :cond_17

    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_17
    :goto_3
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_18

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v6, :cond_18

    if-gez p4, :cond_18

    instance-of v6, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v6, :cond_18

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    invoke-virtual {v6, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    :cond_18
    return-void

    :cond_19
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v6, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto/16 :goto_0

    :cond_1a
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto/16 :goto_1

    :cond_1b
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_2

    :cond_1c
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_3
.end method

.method public stopCursorBlink(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->stopCursorBlink(Z)V

    :cond_0
    return-void
.end method

.method protected stopSelectionActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1    # Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v1, v2

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
