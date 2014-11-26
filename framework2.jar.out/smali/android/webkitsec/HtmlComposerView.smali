.class public Landroid/webkitsec/HtmlComposerView;
.super Landroid/webkitsec/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HtmlComposerView$CursorDirection;,
        Landroid/webkitsec/HtmlComposerView$SelectionOffset;,
        Landroid/webkitsec/HtmlComposerView$ResultTransport;,
        Landroid/webkitsec/HtmlComposerView$HCWHandler;,
        Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;,
        Landroid/webkitsec/HtmlComposerView$StylusEventListener;,
        Landroid/webkitsec/HtmlComposerView$MenuHandler;,
        Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;,
        Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;,
        Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;,
        Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkitsec/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final ACTION_SEC_TRANSLATE_FOR_NON_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field public static final DELAYED_UPDATE_IMAGE_OUTLINE:I = 0x503

.field public static final EXTRA_NAME_AUTO_START_TRANSLATION:Ljava/lang/String; = "auto_start_translation"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field private static final EXTRA_REGION_FOR_RESIZING_HANDLER:I = 0x1e

.field public static final EXTRA_VALUE_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final HIT_INSERTED_IMAGE:I = 0x502

.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x65

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x2711

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field private static final MINIMUM_SIZE_FOR_RESIZING:I = 0xa

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER:I = 0x1000

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER_MIXED:I = 0x2000

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT:I = 0x400

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT_MIXED:I = 0x800

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT:I = 0x4000

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT_MIXED:I = 0x8000

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field public static final SELECTION_CHANGE_EVENT:I = 0x504

.field public static final TOUCH_DRAG_DELTA:I = 0xa

.field public static final UPDATE_RICHTEXT_TOOLBAR:I = 0x501

.field protected static mGVR:Landroid/graphics/Rect;

.field public static operSel:I


# instance fields
.field public DEBUG:Z

.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field bitmap:Landroid/graphics/Bitmap;

.field bottomMiddleCropHandler:Landroid/graphics/Rect;

.field private bottomMiddleHandleEnabled:Z

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field private ignoreMaxLength:Z

.field public imageCanbeMoved:Z

.field public imageCanbeResized:Z

.field private imageSelectedX:I

.field private imageSelectedY:I

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field protected isContextMenuVisible:Z

.field public isImageSelected:Z

.field private isInComposingState:Z

.field private isPhone:Z

.field private isSelectionset:Z

.field public isTouchedImage:Z

.field private isViewInFocus:Z

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftMiddleCropHandler:Landroid/graphics/Rect;

.field private leftMiddleHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private mAdd:I

.field private mAltKeyIsPressed:Z

.field private mByHWKeyCommand:Z

.field private mCaller:Ljava/lang/String;

.field private mContentX:I

.field private mContentY:I

.field private mConversionFactorX:I

.field private mConversionFactorY:I

.field private mCtrlKeyIsPressed:Z

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mDensity:F

.field private mEmojiIsActive:Z

.field public mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

.field private mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

.field public mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

.field public mImageRect:Landroid/graphics/Rect;

.field public mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

.field private mIsInRotation:Z

.field private mIsPenSelection:Z

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field private mLongPressForActionPopup:Z

.field private mLongPressForSelectionCallback:Z

.field protected mLongPressed:Z

.field public mMaxHtmlLength:I

.field mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

.field private mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

.field private mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

.field private mPrevRHIResource:I

.field private mPrivateOptions:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectNotScrolled:Z

.field private mRemove:I

.field public mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectionHandlerIsShown:Z

.field private mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

.field private mShiftKeyIsPressed:Z

.field mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkitsec/HtmlComposerView;

.field private mTextInput:Landroid/text/method/TextKeyListener;

.field private mToastForClipboard:Landroid/widget/Toast;

.field private mToastForMaxLength:Landroid/widget/Toast;

.field private mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;

.field private mZoomFactor:F

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field region_rect_BM:Landroid/graphics/Region;

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LM:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RM:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field region_rect_TM:Landroid/graphics/Region;

.field public resizingHandlerInActionMove:Z

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightMiddleCropHandler:Landroid/graphics/Rect;

.field private rightMiddleHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public strTexttoSpeech:Ljava/lang/String;

.field public textSelected:Ljava/lang/String;

.field textWatcher:Landroid/text/TextWatcher;

.field topMiddleCropHandler:Landroid/graphics/Rect;

.field private topMiddleHandleEnabled:Z

.field widthOfHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const v0, 0x420000ff

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    iput-object p0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const v0, 0x420000ff

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const v0, 0x420000ff

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const v1, 0x420000ff

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    const v1, 0x186a0

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    new-instance v1, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v1, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    invoke-direct {p0, p2}, Landroid/webkitsec/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/16 v9, 0x140

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebViewProvider()Landroid/webkitsec/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebViewClassic;

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v1, v1, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput v8, v0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setAdvanceCommands(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setDisableAnimation(Z)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-boolean v7, v0, Landroid/webkitsec/WebViewClassic;->mDisableSelectionPopup:Z

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v9, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setHighResolutionDevice(Z)V

    :cond_0
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XXXFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebClipboard;->setInterfaceWithClipboard(Z)V

    :cond_2
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->enableEditing()V

    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v7, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iput-object p0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v9, :cond_a

    new-instance v0, Landroid/webkitsec/HtmlComposerInputConnection;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;I)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    :goto_1
    new-instance v0, Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$HCWHandler;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    :goto_2
    return-void

    :cond_3
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XXFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->FAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6666

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6667

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->SFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->CLOSE:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    goto/16 :goto_1

    :cond_b
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    goto/16 :goto_2
.end method

.method static synthetic access$000(Landroid/webkitsec/HtmlComposerView;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/HtmlComposerView;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkitsec/HtmlComposerView;)Landroid/webkitsec/HtmlComposerInputConnection;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkitsec/HtmlComposerView;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImageWithResizing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/webkitsec/HtmlComposerView;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/webkitsec/HtmlComposerView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0    # Landroid/webkitsec/HtmlComposerView;
    .param p1    # Landroid/widget/Toast;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkitsec/HtmlComposerView;)V
    .locals 0
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkitsec/HtmlComposerView;)Z
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    return v0
.end method

.method static synthetic access$302(Landroid/webkitsec/HtmlComposerView;Z)Z
    .locals 0
    .param p0    # Landroid/webkitsec/HtmlComposerView;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0    # Landroid/webkitsec/HtmlComposerView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Landroid/webkitsec/HtmlComposerView;Z)Z
    .locals 0
    .param p0    # Landroid/webkitsec/HtmlComposerView;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method private canSelectAll()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearCursorOrRangeSelection()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v8, 0x800

    :try_start_2
    new-array v0, v8, [B

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_2
    return v7

    :cond_2
    const/4 v8, 0x1

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object v5, v6

    move-object v3, v4

    move v7, v8

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    if-eqz v5, :cond_1

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_6

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    throw v8

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_5

    :catchall_2
    move-exception v8

    move-object v5, v6

    move-object v3, v4

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :catch_9
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private createToolTip()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkitsec/HtmlComposerView;Landroid/content/Context;Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    :cond_1
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private drawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/graphics/Path;
    .param p3    # Landroid/graphics/Path;

    const/4 v11, 0x1

    const/high16 v9, 0x40000000

    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v6, 0x0

    const/16 v7, 0x8a

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p2, v2, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v4, v6

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v5, v6

    const/4 v0, 0x0

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108040c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    iget v6, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v6, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v6, v4, v6

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v4

    iget v9, v2, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v6, v4, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v4

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v6, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v7, v5, v7

    iget v8, v2, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v7, v5, v7

    iget v8, v2, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p3, v3, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0
.end method

.method private drawWebImageSelectionControl(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0, v1}, Landroid/webkitsec/HtmlComposerView;->drawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "DrawImageSelectionControls  mImageCopyInfo is null and invalidate()  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private getCurrentOutlineBottom()F
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getDegreeOfRotatedImage(Landroid/net/Uri;)I
    .locals 13
    .param p1    # Landroid/net/Uri;

    const/4 v8, 0x0

    if-nez p1, :cond_0

    move v9, v8

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    const-string/jumbo v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_1
    if-eqz v7, :cond_2

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    move v9, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v11, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    const/4 v0, 0x6

    if-ne v12, v0, :cond_5

    const/16 v8, 0x5a

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    if-ne v12, v0, :cond_6

    const/16 v8, 0xb4

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    if-ne v12, v0, :cond_2

    const/16 v8, 0x10e

    goto :goto_2

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    if-eqz v7, :cond_2

    goto :goto_1
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1    # Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v1, v2

    move-object v9, v10

    move-object v7, v8

    :goto_1
    :try_start_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " HtmlComposerView "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_2
    return-object v4

    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x1040bf5

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x1040bf6

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_4
    if-eqz v8, :cond_5

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/FilterInputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    move-object v1, v2

    move-object v9, v10

    move-object v7, v8

    goto :goto_2

    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v7, :cond_8

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_a
    throw v12

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    :goto_4
    goto :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    goto :goto_4

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    move-object v1, v2

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_2

    :catchall_1
    move-exception v12

    move-object v7, v8

    goto :goto_3

    :catchall_2
    move-exception v12

    move-object v9, v10

    move-object v7, v8

    goto :goto_3

    :catchall_3
    move-exception v12

    move-object v1, v2

    move-object v9, v10

    move-object v7, v8

    goto :goto_3

    :catch_4
    move-exception v6

    goto/16 :goto_1

    :catch_5
    move-exception v6

    move-object v7, v8

    goto/16 :goto_1

    :catch_6
    move-exception v6

    move-object v9, v10

    move-object v7, v8

    goto/16 :goto_1
.end method

.method private getSelectedImageUri()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x229

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private getSelectionOffsetImage()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    new-instance v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
    .param p2    # Landroid/graphics/Path;
    .param p3    # Landroid/graphics/Path;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    new-instance v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getTargetView()Landroid/webkitsec/HtmlComposerView;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    return-object v0
.end method

.method private handleBottomMiddleHandleDrag(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/high16 v5, 0x42c80000

    const/high16 v4, 0x41200000

    const/4 v0, 0x0

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    if-gez v1, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0
.end method

.method private handleLeftBottomHandleDrag(II)V
    .locals 11
    .param p1    # I
    .param p2    # I

    const/16 v10, 0xa

    const/high16 v9, 0x42c80000

    const/high16 v8, 0x41200000

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v2, v6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_0
    if-gez v3, :cond_3

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v3, v6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :cond_3
    if-lt v0, v10, :cond_1

    if-lt v1, v10, :cond_1

    if-gez v2, :cond_4

    const/4 v4, -0x1

    :cond_4
    if-gez v3, :cond_5

    const/4 v5, -0x1

    :cond_5
    if-eq v4, v5, :cond_1

    if-ge v0, v1, :cond_6

    int-to-float v6, v0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v3, v6, v5

    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    :cond_6
    int-to-float v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v2, v6, v4

    goto :goto_1
.end method

.method private handleLeftMiddleHandleDrag(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/high16 v5, 0x42c80000

    const/high16 v4, 0x41200000

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v0

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .locals 11
    .param p1    # I
    .param p2    # I

    const/16 v10, 0xa

    const/high16 v9, 0x42c80000

    const/high16 v8, 0x41200000

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-int v2, v6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_0
    if-lez v3, :cond_1

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v6, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :cond_1
    if-lt v0, v10, :cond_2

    if-ge v1, v10, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-gez v2, :cond_4

    const/4 v4, -0x1

    :cond_4
    if-gez v3, :cond_5

    const/4 v5, -0x1

    :cond_5
    if-ne v4, v5, :cond_2

    if-ge v0, v1, :cond_6

    int-to-float v6, v0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v3, v6, v5

    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    :cond_6
    int-to-float v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v2, v6, v4

    goto :goto_1
.end method

.method private handleNavKeys(I)V
    .locals 7
    .param p1    # I

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    return-void

    :pswitch_0
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_1

    const-string v2, "MoveWordLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v6, v1, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    :cond_1
    const-string v2, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_4

    const-string v2, "MoveWordLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    :cond_4
    const-string v2, "MoveLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :pswitch_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_7

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_5

    const-string v2, "MoveWordRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v6, v1, :cond_6

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    :cond_5
    const-string v2, "MoveRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_6
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    :cond_7
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_8

    const-string v2, "MoveWordRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_4
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    :cond_8
    const-string v2, "MoveRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :pswitch_2
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_b

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_9

    const-string v2, "MoveToBeginningOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "MoveBackwardAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "MoveToBeginningOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_5
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v6, v1, :cond_a

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    :cond_9
    const-string v2, "MoveUpAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_a
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    :cond_b
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_c

    const-string v2, "MoveToBeginningOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "MoveBackward"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "MoveToBeginningOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_6
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    :cond_c
    const-string v2, "MoveUp"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :pswitch_3
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_f

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_d

    const-string v2, "MoveToEndOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "MoveForwardAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_7
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v6, v1, :cond_e

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    :cond_d
    const-string v2, "MoveDownAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_e
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    :cond_f
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_10

    const-string v2, "MoveToEndOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "MoveForward"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_8
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    :cond_10
    const-string v2, "MoveDown"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .locals 13
    .param p1    # I
    .param p2    # I

    const/16 v12, 0xa

    const/high16 v11, 0x42c80000

    const/high16 v10, 0x41200000

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x1

    if-gez v2, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    float-to-int v2, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_0
    if-gez v3, :cond_3

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    float-to-int v3, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :cond_3
    if-lez v2, :cond_4

    if-lez v3, :cond_4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    :cond_4
    if-lt v0, v12, :cond_1

    if-lt v1, v12, :cond_1

    if-gez v2, :cond_5

    const/4 v6, -0x1

    :cond_5
    if-gez v3, :cond_6

    const/4 v7, -0x1

    :cond_6
    if-ne v6, v7, :cond_1

    if-ge v0, v1, :cond_7

    int-to-float v8, v0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v3, v8, v7

    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto/16 :goto_0

    :cond_7
    int-to-float v8, v1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v2, v8, v6

    goto :goto_1
.end method

.method private handleRightMiddleHandleDrag(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/high16 v5, 0x42c80000

    const/high16 v4, 0x41200000

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v0

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    return-void
.end method

.method private handleRightTopHandleDrag(II)V
    .locals 13
    .param p1    # I
    .param p2    # I

    const/16 v12, 0xa

    const/high16 v11, 0x42c80000

    const/high16 v10, 0x41200000

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x1

    if-gez v2, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    float-to-int v2, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_0
    if-lez v3, :cond_1

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    float-to-int v3, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :cond_1
    if-lez v2, :cond_2

    if-gez v3, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    :cond_2
    if-lt v0, v12, :cond_3

    if-ge v1, v12, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-gez v2, :cond_5

    const/4 v6, -0x1

    :cond_5
    if-gez v3, :cond_6

    const/4 v7, -0x1

    :cond_6
    if-eq v6, v7, :cond_3

    if-ge v0, v1, :cond_7

    int-to-float v8, v0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v3, v8, v7

    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    :cond_7
    int-to-float v8, v1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v2, v8, v6

    goto :goto_1
.end method

.method private handleTopMiddleHandleDrag(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/high16 v5, 0x42c80000

    const/high16 v4, 0x41200000

    const/4 v0, 0x0

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    return-void
.end method

.method private handle_ACTION_CANCEL()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/high16 v3, 0x40000000

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    :goto_1
    return-void

    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isBottomMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isTopMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1
.end method

.method private handle_ACTION_MOVE(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_5

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_4

    :cond_3
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    :cond_4
    return-void

    :cond_5
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_6

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_7

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_8

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightTopHandleDrag(II)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_9

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftMiddleHandleDrag(II)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_a

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleTopMiddleHandleDrag(II)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_b

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightMiddleHandleDrag(II)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleBottomMiddleHandleDrag(II)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0
.end method

.method private handle_ACTION_UP(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v1, :cond_2

    :cond_0
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    invoke-direct {p0, v3, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    :cond_2
    return-void
.end method

.method private hide()V
    .locals 2

    const-string v0, "HtmlComposerView"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    :cond_0
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private insertImageWithResizing(Ljava/lang/String;)Z
    .locals 29
    .param p1    # Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v26, 0x0

    const/4 v15, 0x0

    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkitsec/HtmlComposerView;->getDegreeOfRotatedImage(Landroid/net/Uri;)I

    move-result v15

    const/4 v13, 0x0

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    :cond_1
    :goto_0
    if-nez v13, :cond_7

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "content"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "picasa"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "sns"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-nez v14, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "return null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eq v4, v7, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "return 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_4
    :try_start_1
    const-string v4, "_data"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertImage file_scheme: conten, filePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "HtmlComposerView"

    const-string v7, "Uri is not either file or content scheme"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### absoluteFilePath :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v7, 0x100000

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gtz v4, :cond_9

    const/4 v4, 0x4

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### originalFile.length() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v21

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    if-nez v6, :cond_d

    :cond_a
    :goto_2
    move/from16 v4, v26

    goto/16 :goto_1

    :catch_0
    move-exception v17

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    const/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    if-eqz v6, :cond_a

    move/from16 v4, v26

    goto/16 :goto_1

    :cond_c
    throw v4

    :cond_d
    if-eqz v15, :cond_12

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    invoke-virtual {v11, v4, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    if-nez v6, :cond_11

    :cond_e
    :goto_3
    move/from16 v4, v26

    goto/16 :goto_1

    :catch_1
    move-exception v17

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_f
    const/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    if-eqz v6, :cond_e

    move/from16 v4, v26

    goto/16 :goto_1

    :cond_10
    throw v4

    :cond_11
    if-eqz v15, :cond_12

    const/16 v4, 0xb4

    if-eq v15, v4, :cond_12

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_12
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v4, :cond_13

    move/from16 v4, v26

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    if-gt v4, v7, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v28, v4, v7

    mul-int v4, v22, v28

    div-int v18, v4, v23

    const-wide/32 v7, 0x100000

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-lez v4, :cond_14

    if-eqz v15, :cond_1a

    :cond_14
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Big Data"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_16

    :try_start_6
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    :cond_15
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_16
    :goto_5
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1b

    move/from16 v4, v26

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    goto :goto_4

    :cond_18
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "png"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_19

    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_2
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v4, v26

    goto/16 :goto_1

    :cond_19
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/webkitsec/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v4, v7, :cond_16

    const-string v4, "HtmlComposerView"

    const-string v7, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move/from16 v4, v26

    goto/16 :goto_1

    :catch_3
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v4, v26

    goto/16 :goto_1

    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/webkitsec/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v4, v7, :cond_16

    const-string v4, "HtmlComposerView"

    const-string v7, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v26

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1c

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-eqz v28, :cond_1f

    move/from16 v0, v28

    move/from16 v1, v23

    if-le v0, v1, :cond_1d

    move/from16 v28, v23

    move/from16 v18, v22

    :cond_1d
    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    const/high16 v9, 0x42c80000

    div-float/2addr v4, v9

    float-to-double v9, v4

    cmpg-double v4, v7, v9

    if-gez v4, :cond_1e

    mul-int/lit8 v4, v28, 0x64

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v28, v0

    mul-int/lit8 v4, v18, 0x64

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v18, v0

    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    move-result v26

    :goto_6
    move/from16 v4, v26

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    move-result v26

    goto :goto_6

    :catchall_1
    move-exception v4

    if-nez v6, :cond_c

    goto/16 :goto_2

    :catchall_2
    move-exception v4

    if-nez v6, :cond_10

    goto/16 :goto_3
.end method

.method private isBottomMiddleImageHandle(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCursorAtBoundary(II)I
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x22c

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private isHoverPointWithinIconAreaForResizing(II)Z
    .locals 12
    .param p1    # I
    .param p2    # I

    const v11, 0x1080702

    const v10, 0x1080701

    const v9, 0x1080700

    const/high16 v8, 0x40000000

    const/4 v4, 0x1

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v4, v5, :cond_11

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHoverPointWithinIconAreaForResizing getX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHoverPointWithinIconAreaForResizing outLinePath re.left re.top re.right re.bottom "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x28

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v2, v5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v3, v5

    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Top"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput v11, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    :goto_0
    return v4

    :cond_3
    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Top"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v10, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto :goto_0

    :cond_5
    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_7

    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_7

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Bottom"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput v10, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto :goto_0

    :cond_7
    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_9

    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_9

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Bottom"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v11, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    :cond_9
    sub-int v5, v2, v0

    if-gt v5, p1, :cond_b

    add-int v5, v2, v0

    if-lt v5, p1, :cond_b

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_b

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_b

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Top-Horizontal Center"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    :cond_b
    sub-int v5, v2, v0

    if-gt v5, p1, :cond_d

    add-int v5, v2, v0

    if-lt v5, p1, :cond_d

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_d

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_d

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Bottom-Horizontal Center"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    :cond_d
    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_f

    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_f

    sub-int v5, v3, v0

    if-gt v5, p2, :cond_f

    add-int v5, v3, v0

    if-lt v5, p2, :cond_f

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_e

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Vertical Center"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const v5, 0x1080703

    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    :cond_f
    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_11

    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_11

    sub-int v5, v3, v0

    if-gt v5, p2, :cond_11

    add-int v5, v3, v0

    if-lt v5, p2, :cond_11

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Vertical Center"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const v5, 0x1080703

    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private isInsertionAllowed(I)Z
    .locals 6
    .param p1    # I

    const/4 v3, 0x1

    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->htmlLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_2
    add-int v4, v0, p1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    if-le v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isOutLineRect(II)Z
    .locals 5
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightBottomImageHandle(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightMiddleImageHandle(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightTopImageHandle(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTopMiddleImageHandle(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftBottomImageHandle(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftMiddleImageHandle(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftTopImageHandle(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    move v0, p1

    move v1, p2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onAlignSelectedImageOutlineRectUpdate()V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private resetAndCreateOutlinePath()V
    .locals 6

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .locals 6

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private selectedImageOutlineRectUpdate()V
    .locals 4

    const/4 v3, -0x1

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private sendEventToUpdateToolbar()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x501

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setEditable(Z)V
    .locals 3
    .param p1    # Z

    const/16 v2, 0x207

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private updateAllHandles()V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftTopHandle()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightTopHandle()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftBottomHandle()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightBottomHandle()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateTopMiddleHandle()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftMiddleHandle()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateBottomMiddleHandle()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightMiddleHandle()V

    return-void
.end method

.method private updateBottomMiddleHandle()V
    .locals 6

    const/high16 v5, 0x40000000

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v2

    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method private updateLeftBottomHandle()V
    .locals 6

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateLeftMiddleHandle()V
    .locals 7

    const/high16 v6, 0x40000000

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    return-void
.end method

.method private updateLeftTopHandle()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    return-void
.end method

.method private updateOutlineRectangle(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_3
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_4
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_5
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_6
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_7
    return-void
.end method

.method private updateRegions()V
    .locals 10

    const/16 v5, 0x1e

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v6

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v6

    add-int/lit8 v4, v1, 0x78

    if-le v3, v4, :cond_2

    move v4, v5

    :goto_0
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/lit8 v4, v0, 0x78

    if-le v2, v4, :cond_3

    :goto_1
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    if-gez v4, :cond_0

    iput v7, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    :cond_0
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    if-gez v4, :cond_1

    iput v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    :cond_1
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    return-void

    :cond_2
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x4

    goto/16 :goto_0

    :cond_3
    sub-int v4, v2, v0

    div-int/lit8 v5, v4, 0x4

    goto/16 :goto_1
.end method

.method private updateRightBottomHandle()V
    .locals 6

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateRightMiddleHandle()V
    .locals 7

    const/high16 v6, 0x40000000

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    return-void
.end method

.method private updateRightTopHandle()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    return-void
.end method

.method private updateTopMiddleHandle()V
    .locals 6

    const/high16 v5, 0x40000000

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateactionbar()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public DoClearImageSelection()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    :cond_0
    return-void
.end method

.method public GetLongPressForActioinPopup()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    return v0
.end method

.method public HtmlComposerDrawContent(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;

    const/4 v2, 0x1

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0xf

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v1, "HtmlComposerView"

    const-string v2, "drawWebImageSelectionControl is being called "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->drawWebImageSelectionControl(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public IsWordMisspelledAtPosition(II)Z
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;->IsWordMisspelledAtPosition(II)Z

    move-result v0

    return v0
.end method

.method public MoveCursorRight()V
    .locals 2

    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    return-void
.end method

.method public SendInitComposing()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "imeAction:initComposing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    return-void
.end method

.method public SetLongPressForActioinPopup(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1    # Landroid/text/TextWatcher;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    sget-object v0, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    return-void
.end method

.method public canCopy()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public canUndo()Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->contentInvalidateAll()V

    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method public changeFontSize(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "FontValue"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(I)V

    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 5

    const/4 v2, -0x1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public cleanTempResources()V
    .locals 2

    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->deleteTempDirectory()V

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    return-void
.end method

.method public clearComposingSelection()V
    .locals 4

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :cond_0
    return-void
.end method

.method public clearImageSelection()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  clearImageSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  clearImageSelection  Clearing selection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    :cond_0
    return-void
.end method

.method public clearSelection()V
    .locals 1

    invoke-super {p0}, Landroid/webkitsec/WebView;->clearSelection()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_2

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public cut()V
    .locals 2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public delayedUpdateOutlineDrawRect()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x503

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public delete()V
    .locals 4

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTargetNull()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x501

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x502

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x503

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x504

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-super {p0}, Landroid/webkitsec/WebView;->destroy()V

    return-void
.end method

.method public disableEditing()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/webkitsec/HtmlComposerView;->setEditable(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 26
    .param p1    # Landroid/view/KeyEvent;

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/16 v18, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v4, 0x39

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    if-eqz v18, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    :cond_1
    :goto_1
    const/16 v4, 0x7a

    move/from16 v0, v22

    if-eq v0, v4, :cond_3

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_2

    const/16 v4, 0x97

    move/from16 v0, v22

    if-eq v0, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_e

    const/16 v4, 0x15

    move/from16 v0, v22

    if-ne v0, v4, :cond_e

    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_4

    and-int/lit8 v4, v15, 0x1

    if-eqz v4, :cond_7

    const/16 v21, 0x1

    :goto_2
    and-int/lit16 v4, v15, 0x1000

    if-eqz v4, :cond_8

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_9

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_9

    if-nez v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToBeginningOfLine()V

    :cond_4
    :goto_4
    const/16 v23, 0x1

    :goto_5
    return v23

    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_1

    :cond_7
    const/16 v21, 0x0

    goto :goto_2

    :cond_8
    const/16 v20, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_b

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_a

    if-eqz v20, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorBegining()V

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_c

    if-eqz v21, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_d

    if-nez v20, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    :cond_e
    const/16 v4, 0x7b

    move/from16 v0, v22

    if-eq v0, v4, :cond_10

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_f

    const/16 v4, 0x91

    move/from16 v0, v22

    if-eq v0, v4, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_19

    const/16 v4, 0x16

    move/from16 v0, v22

    if-ne v0, v4, :cond_19

    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_11

    and-int/lit8 v4, v15, 0x1

    if-eqz v4, :cond_12

    const/16 v21, 0x1

    :goto_6
    and-int/lit16 v4, v15, 0x1000

    if-eqz v4, :cond_13

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_14

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_14

    if-nez v20, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToEndOfLine()V

    :cond_11
    :goto_8
    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_12
    const/16 v21, 0x0

    goto :goto_6

    :cond_13
    const/16 v20, 0x0

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_16

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_15

    if-eqz v20, :cond_16

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorEnd()V

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_17

    if-eqz v21, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_18

    if-nez v20, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_8

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_1f

    const/16 v4, 0x13

    move/from16 v0, v22

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x14

    move/from16 v0, v22

    if-ne v0, v4, :cond_1f

    :cond_1a
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_1d

    const/16 v4, 0x13

    move/from16 v0, v22

    if-ne v0, v4, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorBegining()V

    :cond_1b
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_9

    :cond_1d
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_1b

    const/16 v4, 0x14

    move/from16 v0, v22

    if-ne v0, v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorEnd()V

    goto :goto_9

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_9

    :cond_1f
    const/16 v4, 0x5c

    move/from16 v0, v22

    if-eq v0, v4, :cond_20

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_23

    const/16 v4, 0x99

    move/from16 v0, v22

    if-ne v0, v4, :cond_23

    :cond_20
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToPageUp()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    :cond_21
    :goto_a
    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToPageUp()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_a

    :cond_23
    const/16 v4, 0x5d

    move/from16 v0, v22

    if-eq v0, v4, :cond_24

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_27

    const/16 v4, 0x93

    move/from16 v0, v22

    if-ne v0, v4, :cond_27

    :cond_24
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_25

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToPageDown()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    :cond_25
    :goto_b
    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToPageDown()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_b

    :cond_27
    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_2d

    const/16 v4, 0x92

    move/from16 v0, v22

    if-eq v0, v4, :cond_28

    const/16 v4, 0x94

    move/from16 v0, v22

    if-eq v0, v4, :cond_28

    const/16 v4, 0x96

    move/from16 v0, v22

    if-eq v0, v4, :cond_28

    const/16 v4, 0x98

    move/from16 v0, v22

    if-eq v0, v4, :cond_28

    const/16 v4, 0x9e

    move/from16 v0, v22

    if-ne v0, v4, :cond_2d

    :cond_28
    if-eqz v18, :cond_2d

    const/16 v4, 0x92

    move/from16 v0, v22

    if-ne v0, v4, :cond_29

    const/16 v22, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_29
    const/16 v4, 0x94

    move/from16 v0, v22

    if-ne v0, v4, :cond_2a

    const/16 v22, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_2a
    const/16 v4, 0x96

    move/from16 v0, v22

    if-ne v0, v4, :cond_2b

    const/16 v22, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_2b
    const/16 v4, 0x98

    move/from16 v0, v22

    if-ne v0, v4, :cond_2c

    const/16 v22, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_2c
    const/16 v4, 0x9e

    move/from16 v0, v22

    if-ne v0, v4, :cond_2d

    const/4 v2, 0x0

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    goto/16 :goto_5

    :cond_2d
    const/16 v4, 0x13

    move/from16 v0, v22

    if-lt v0, v4, :cond_34

    const/16 v4, 0x16

    move/from16 v0, v22

    if-gt v0, v4, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v25

    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent selectionAtBoundary = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent down = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v4, v25, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    const/16 v4, 0x13

    move/from16 v0, v22

    if-eq v0, v4, :cond_2f

    :cond_2e
    and-int/lit8 v4, v25, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_32

    const/16 v4, 0x14

    move/from16 v0, v22

    if-ne v0, v4, :cond_32

    :cond_2f
    const/16 v17, 0x102

    const/16 v16, 0x6

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    const/16 v5, 0x102

    if-ne v4, v5, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_30

    const/16 v19, 0x1

    :goto_c
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent isKeyFromCursorControl = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v19, :cond_31

    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_30
    const/16 v19, 0x0

    goto :goto_c

    :cond_31
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    goto/16 :goto_5

    :cond_32
    if-eqz v18, :cond_33

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    :cond_33
    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_34
    const/16 v4, 0x3e

    move/from16 v0, v22

    if-ne v4, v0, :cond_36

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-nez v4, :cond_36

    if-eqz v18, :cond_35

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v4, "InsertText"

    const-string v5, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    :cond_35
    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_36
    const/16 v4, 0x3d

    move/from16 v0, v22

    if-ne v4, v0, :cond_39

    if-eqz v18, :cond_38

    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-ne v4, v5, :cond_37

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_37
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    :cond_38
    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_39
    const/16 v4, 0x20

    move/from16 v0, v22

    if-ne v4, v0, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_3b

    if-eqz v18, :cond_3a

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v5

    if-ne v4, v5, :cond_3a

    const-string v4, "Delete"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    :cond_3a
    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_3b
    const/16 v4, 0x42

    move/from16 v0, v22

    if-eq v0, v4, :cond_3c

    const/16 v4, 0xa0

    move/from16 v0, v22

    if-ne v0, v4, :cond_3e

    :cond_3c
    if-eqz v18, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    :cond_3d
    const/16 v23, 0x1

    goto/16 :goto_5

    :cond_3e
    const/16 v4, 0x71

    move/from16 v0, v22

    if-eq v0, v4, :cond_3f

    const/16 v4, 0x72

    move/from16 v0, v22

    if-ne v0, v4, :cond_40

    :cond_3f
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    goto/16 :goto_5

    :cond_40
    const/16 v4, 0x1d

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x1f

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x32

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x34

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x36

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x35

    move/from16 v0, v22

    if-ne v0, v4, :cond_42

    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_42

    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v22, :sswitch_data_0

    :cond_42
    if-eqz v24, :cond_43

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    move/from16 v23, v24

    goto/16 :goto_5

    :sswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_42

    const/16 v23, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_42

    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_42

    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_42

    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_42

    const/16 v4, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_42

    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    :cond_43
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_1
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "dispatchPopulateAccessibilityEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public doExecute(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Landroid/os/Bundle;
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x0

    return-object v0
.end method

.method public doResizeImage(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public drawSelectionControl()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    return-void
.end method

.method public drawSelectionControl(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_0
.end method

.method public drawSelectionControl(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_2
    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public dropTheDraggedText(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "HtmlComposerView"

    const-string v1, "dropTheDraggedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22d

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public enableEditing()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    invoke-direct {p0, v1}, Landroid/webkitsec/HtmlComposerView;->setEditable(Z)V

    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const v6, 0x1040bf6

    const v5, 0x1040bf5

    const/4 v1, 0x0

    const-string v2, "Insert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_3

    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public executeAlignCenter()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "JustifyCenter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    return-void
.end method

.method public executeAlignLeft()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "JustifyLeft"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    return-void
.end method

.method public executeAlignRight()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "JustifyRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    return-void
.end method

.method public executeHyperlink(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CreateLink"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void

    :cond_0
    const-string v0, "Unlink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public executeIndent()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->contentInvalidateAll()V

    return-void
.end method

.method public executeOutdent()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    return-void
.end method

.method public executeUnLink()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "UnLink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCaretState()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x20c

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCaretState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public declared-synchronized getComposingState()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getContentX(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    return v0
.end method

.method public getContentY(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v0

    return v0
.end method

.method public getCurrentFontSize()I
    .locals 4

    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCurrentFontValue()I
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x225

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2

    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getCursorPressed()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .locals 6
    .param p1    # Z

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x209

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public getHTML()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public getImageSize(II)Landroid/graphics/Rect;
    .locals 6
    .param p1    # I
    .param p2    # I

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object v4

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    new-instance v3, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x226

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getImeOptions()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailContent()Landroid/webkitsec/WebHTMLMarkupData;
    .locals 4

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getMailHTML()Landroid/webkitsec/WebHTMLMarkupData;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/webkitsec/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMailHTML()Landroid/webkitsec/WebHTMLMarkupData;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v1, Landroid/webkitsec/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkitsec/WebHTMLMarkupData;-><init>()V

    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkitsec/WebHTMLMarkupData;

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedHtmlText()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x230

    invoke-virtual {v3, v4, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getSelectedImageRect()Landroid/graphics/Rect;
    .locals 6

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object v4

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, -0x1

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isComposerImageTouched()Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x227

    invoke-virtual {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionHandleHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionHandleWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    invoke-direct {v3, v4, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    :goto_0
    return-object v3

    :cond_1
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectionSec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShiftKeyState()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/webkitsec/HtmlComposerView$CursorDirection;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    return-object v0
.end method

.method protected handle_onTouchEvent(IIIII)Z
    .locals 21
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const/16 v18, 0x0

    :goto_1
    return v18

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_CANCEL()V

    const/16 v18, 0x1

    goto :goto_1

    :cond_1
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     imagerect left ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect top  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect right = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect bottom="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     content X ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " content Y  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    const-string v18, "HtmlComposerView"

    const-string v19, " image is touched and can be moved "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    goto :goto_2

    :pswitch_2
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v18, v0

    sub-int v18, p4, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x0

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x0

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, p4

    add-int p2, p2, v18

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x0

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v19, v0

    add-int p4, v18, v19

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v18, v0

    sub-int v18, p5, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, p5

    add-int p3, p3, v18

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v19, v0

    add-int p5, v18, v19

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v18, v0

    sub-int v18, p3, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_MOVE(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v18, v0

    sub-int v18, p4, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    const/16 v20, 0x0

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x0

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, p4

    add-int p2, p2, v18

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x0

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v19, v0

    add-int p4, v18, v19

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v18, v0

    sub-int v18, p5, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, p5

    add-int p3, p3, v18

    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v19, v0

    add-int p5, v18, v19

    goto/16 :goto_5

    :cond_e
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    const/16 v19, 0x21c

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/16 v18, 0x1

    goto/16 :goto_1

    :pswitch_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "HtmlComposerView"

    const-string/jumbo v19, "making selection set to true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    :cond_12
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCursorPressed()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v18, v0

    if-nez v18, :cond_16

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    const/16 v18, 0x502

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    iput-object v9, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_15
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_16
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_UP(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v13

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    const/4 v15, 0x1

    :cond_18
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_19

    const-string v18, "HtmlComposerView"

    const-string v19, "Image isn\'t going to resize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_19
    const-string v18, "HtmlComposerView"

    const-string v19, "doResizeImage called - Image is going to resize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_1a

    mul-int/lit8 v18, v6, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000

    cmpl-float v18, v18, v19

    if-gez v18, :cond_1c

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_1b

    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000

    cmpl-float v18, v18, v19

    if-gez v18, :cond_1c

    :cond_1b
    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_1e

    mul-int/lit8 v18, v6, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_1e

    :cond_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/webkitsec/HtmlComposerView;->doResizeImage(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    :cond_1d
    :goto_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v18, v0

    if-nez v18, :cond_20

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    const-string v18, "InsertHTML"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_20
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_21

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_21

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_21

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_23

    :cond_21
    const-string v18, "HtmlComposerView"

    const-string v19, "User taps outside of an image rect. We will release the selection"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->isCursorAtBoundary(II)I

    move-result v18

    if-nez v18, :cond_22

    const-string v18, "HtmlComposerView"

    const-string v19, "Boundary is not touched"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_22
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_23
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_27

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_27

    if-nez v15, :cond_27

    const-string v18, "HtmlComposerView"

    const-string v19, "A other image is selected."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v9

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Selected Image\'s url = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_25

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_25

    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    const/16 v18, 0x502

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    iput-object v9, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_24
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_25
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    :cond_26
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_27
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    const-string v18, "HtmlComposerView"

    const-string v19, "The current selected image is tapped."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public hideInsertionController()V
    .locals 0

    return-void
.end method

.method public htmlLength()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    :cond_0
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/graphics/Rect;

    const/4 v9, -0x1

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40800000

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v2, v3, 0x2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v5, v2, v5

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v4, v1, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mTouchSlop:I

    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    sget-object v2, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_1

    const-string v2, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    const-string v2, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    sget-object v2, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_0

    const-string v2, "MoveToEndOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_2
.end method

.method public insertImage(Ljava/lang/String;IIZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    const/4 v0, 0x1

    if-ne v0, p4, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebView;->clearCache(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebView;->clearCache(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    const v2, 0x102040a

    sput v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertImage(Ljava/lang/String;II)Z
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    const v2, 0x102040a

    sput v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertOrderedList()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method public insertSubscript()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Superscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    return-void
.end method

.method public insertSuperscript()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Subscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkitsec/HtmlComposerView$SelectionOffset;"
        }
    .end annotation

    const/4 v3, -0x1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    invoke-direct {v2, v3, v3}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Landroid/webkitsec/WebViewCore$EditableParams;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$EditableParams;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object p1, v1, Landroid/webkitsec/WebViewCore$EditableParams;->content:Ljava/lang/String;

    iput p2, v1, Landroid/webkitsec/WebViewCore$EditableParams;->newCursorPosition:I

    iput-boolean p3, v1, Landroid/webkitsec/WebViewCore$EditableParams;->composing:Z

    iput-object p4, v1, Landroid/webkitsec/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    iget v3, v1, Landroid/webkitsec/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkitsec/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, v3, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertUnorderedList()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_a

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    sput v5, Landroid/webkitsec/HtmlComposerView;->operSel:I

    :cond_7
    :goto_3
    return-void

    :cond_8
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "Images inserted"

    goto :goto_0

    :cond_9
    const-string v0, "Images"

    goto :goto_0

    :cond_a
    const v2, 0x1020020

    if-ne p1, v2, :cond_b

    const-string v0, ""

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const v2, 0x1020408

    if-ne p1, v2, :cond_c

    const-string v0, ""

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_c
    const v2, 0x102040a

    if-ne p1, v2, :cond_d

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    const-string v1, ""

    goto :goto_1

    :cond_d
    const/16 v2, 0xf

    if-ne p1, v2, :cond_7

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v1, ""

    goto :goto_1

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    goto :goto_2
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isComposerImageTouched()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    return v0
.end method

.method public isInActionMove()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    return v0
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

.method public isInsertionControllerShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionHandleShown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    return v0
.end method

.method public isTouchedOutside(II)Z
    .locals 8
    .param p1    # I
    .param p2    # I

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v4, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v4, p0, v2, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v4

    :try_start_0
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v5

    const/16 v6, 0x22e

    invoke-virtual {v5, v6, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catch_0
    move-exception v0

    :try_start_4
    const-string v5, "HtmlComposerView"

    const-string v6, "Caught exception while waiting for overrideUrl"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isVisibleCursorHandler(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_2

    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->createToolTip()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->createToolTip()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public isVisibleCursorhandlerListener(Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;)V
    .locals 0
    .param p1    # Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    return-void
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .locals 2

    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .locals 2

    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .locals 2

    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .locals 2

    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public moveCursorSelectionToPageDown()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "MovePageDownAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method public moveCursorSelectionToPageUp()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "MovePageUpAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .locals 2

    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    return-void
.end method

.method public moveCursorToEndOfLine()V
    .locals 2

    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    return-void
.end method

.method public moveCursorToPageDown()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method public moveCursorToPageUp()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    if-nez v1, :cond_0

    new-instance v1, Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkitsec/HtmlComposerView;Landroid/webkitsec/HtmlComposerView$1;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    :cond_0
    invoke-super {p0}, Landroid/webkitsec/WebView;->onAttachedToWindow()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1    # Landroid/content/res/Configuration;

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, v2, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    if-ne v3, v0, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    invoke-interface {v1, v3}, Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;->onSelectionChanged(I)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    :cond_1
    return-void
.end method

.method public onContextMenuItem(I)Z
    .locals 9
    .param p1    # I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v4

    :sswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    if-ne v5, v3, :cond_1

    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    :goto_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v3, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    iput v3, v6, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    move v4, v5

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/webkitsec/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    move v4, v5

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->cut()V

    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    const v3, 0x1020020

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_3

    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    const-string v3, " image "

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object v6, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    :cond_3
    move v4, v5

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->cut()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    const v3, 0x1020408

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_4

    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object v6, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const-string v3, " images "

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_4
    move v4, v5

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->copy()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isSelectionHandleShown()Z

    move-result v3

    if-ne v5, v3, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    :cond_5
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    move v4, v5

    goto/16 :goto_0

    :sswitch_5
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->copy()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x1040bf5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x1040bf6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_7

    const-string v3, ""

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->paste()V

    if-ne v5, v2, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    :goto_3
    const v3, 0x1020022

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v4, v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_3

    :sswitch_7
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebClipboard;->launchClipboardUI()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->undo()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->redo()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_9
    move v4, v5

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_9
        0x2711 -> :sswitch_8
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p1    # Landroid/view/inputmethod/EditorInfo;

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v4, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_0
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    if-nez v1, :cond_1

    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v3}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    :cond_0
    invoke-super {p0}, Landroid/webkitsec/WebView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 24
    .param p1    # Landroid/view/DragEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/16 v19, 0x0

    :goto_0
    return v19

    :pswitch_0
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_STARTED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    const/16 v19, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->saveSelection()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v19

    const/16 v20, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v22

    invoke-virtual/range {v19 .. v22}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    :cond_2
    const/16 v19, 0x1

    goto :goto_0

    :pswitch_1
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_ENTERED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v19

    if-nez v19, :cond_3

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    const/16 v19, 0x1

    goto/16 :goto_0

    :pswitch_2
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_LOCATION"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v19

    const/16 v20, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v22

    invoke-virtual/range {v19 .. v22}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    :cond_4
    const/16 v19, 0x1

    goto/16 :goto_0

    :pswitch_3
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_EXITED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    goto/16 :goto_0

    :pswitch_4
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DROP"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_a

    invoke-virtual {v6, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    if-nez v11, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const-string v19, "HtmlComposerView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DragEvent.ACTION_DROP HTML = ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_2

    :cond_8
    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_3
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const-string v19, "HtmlComposerView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DragEvent.ACTION_DROP sbForText = ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v14

    goto :goto_2

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_a
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-lez v19, :cond_c

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->dropTheDraggedText(II)V

    const-string v19, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-lez v19, :cond_b

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->dropTheDraggedText(II)V

    invoke-static {v12}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v19, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :pswitch_5
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_ENDED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .param p1    # I

    const/16 v2, 0x82

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .param p1    # Z
    .param p2    # I
    .param p3    # Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/webkitsec/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez p1, :cond_2

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_1

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->clearActionModes()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->updateClipboardUI()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/webkitsec/HtmlComposerView$2;

    invoke-direct {v3, p0}, Landroid/webkitsec/HtmlComposerView$2;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_EXIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    :cond_2
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-ne v6, v3, :cond_5

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent true == isHoverPointWithinIconAreaForResizing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, -0x1

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    if-eq v5, v2, :cond_0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x9

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x6

    goto :goto_1

    :cond_5
    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    if-eq v5, v3, :cond_0

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1080700
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onInitializeAccessibilityEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onInitializeAccessibilityEvent selection changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v5, 0x1

    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "htmlcompor onKeyDown "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v6, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    iput-boolean v9, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/16 v6, 0x37

    if-eq p1, v6, :cond_2

    const/16 v6, 0x3e

    if-ne p1, v6, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-eq v6, v5, :cond_4

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-static {v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v7

    if-eq v6, v7, :cond_4

    :cond_3
    const/16 v6, 0x3f

    if-ne p1, v6, :cond_5

    :cond_4
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    :cond_5
    sparse-switch p1, :sswitch_data_0

    :goto_0
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    const/4 v2, 0x0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const/16 v7, 0xf

    invoke-virtual {v6, v7, v9}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v9, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    if-ltz v6, :cond_6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v6, :cond_6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v6, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_6
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-lt v6, v5, :cond_7

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, p0, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    sub-int v1, v6, v7

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    :cond_8
    if-lez v1, :cond_d

    if-eqz v2, :cond_c

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, ""

    invoke-virtual {p0, v6, v5}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    :goto_1
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    :cond_a
    move v0, v5

    :goto_3
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebClipboard;->launchClipboardUI()V

    move v0, v5

    goto :goto_3

    :sswitch_1
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto/16 :goto_0

    :sswitch_2
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "DeleteForward"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v0, v5

    goto :goto_3

    :sswitch_4
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_3

    :sswitch_5
    move v0, v5

    goto :goto_3

    :cond_b
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    :cond_c
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    :cond_d
    if-gez v1, :cond_9

    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    goto/16 :goto_2

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_5
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_4
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0xe8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtmlComposerView"

    const-string v2, " onKeyPreIme-dismiss Clipboard "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebClipboard;->dismissClipboardUI()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "htmlcompor onKeyUp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    if-ltz v3, :cond_1

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p0, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    :sswitch_0
    return v2

    :sswitch_1
    const/16 v3, 0x3b

    if-ne v3, p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    and-int/lit8 v3, v0, 0x7

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->setSelectionHandle(Z)V

    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    :cond_2
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto :goto_0

    :sswitch_2
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    goto :goto_0

    :sswitch_3
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_4

    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "image"

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x1020020

    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_3
        0x70 -> :sswitch_0
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onPopulateAccessibilityEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent textForAccessibility = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent event.getText = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent event.getText after= ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onPopulateAccessibilityEvent End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public onRecieveWebViewDoubleTapped()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onRecieveWebViewDoubleTapped()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    if-ne v3, v0, :cond_0

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0
.end method

.method public onRecieveWebViewSelectionChanged()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebViewSelectionChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v4, v1, :cond_4

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->playPenSelectionVibrator()Z

    :cond_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2000

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getDCHandlerLastHandleType()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    if-ne v4, v1, :cond_6

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    if-ne v4, v2, :cond_6

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v2

    if-eqz v2, :cond_6

    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->isInBatchEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_1

    :cond_6
    if-ne v4, v1, :cond_7

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    if-eqz v2, :cond_8

    :cond_7
    if-eq v4, v1, :cond_3

    :cond_8
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_2
.end method

.method public onRecieveWebviewLongTouchUp()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewLongTouchUp() Has Long-pressed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    if-nez v2, :cond_0

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    :cond_0
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewLongTouchUp() this view has already lost the focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imm active  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getTargetView()Landroid/webkitsec/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->SendInitComposing()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    :cond_3
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v5, v1, :cond_1

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    goto :goto_0
.end method

.method public onRecieveWebviewShortTouchUp()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() Has Short-pressed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() this view has already lost the focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v2, :cond_2

    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imm active  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getTargetView()Landroid/webkitsec/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    if-eq v5, v2, :cond_3

    invoke-virtual {v0, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->SendInitComposing()V

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-eq v5, v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->getContentX(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->getContentY(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-string v0, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTouchEvent  MotionEvent Action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->isTouchedOutside(II)Z

    move-result v0

    if-ne v9, v0, :cond_1

    const-string v0, "HtmlComposerView"

    const-string v7, "hasFocus() == false && isTouchedOutside() == true"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/HtmlComposerView;->handle_onTouchEvent(IIIII)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v0, "HtmlComposerView"

    const-string/jumbo v7, "onTouchEvent ret == false"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-ne v9, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v9, v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string/jumbo v7, "onTouchEvent After MotionEvent.ACTION_UP, selection is caret!!"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, v9}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .param p1    # Z

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onWindowFocusChanged(Z)V

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v2, :cond_0

    const-string v2, "HtmlComposerView"

    const-string v3, "false == isImageSelected "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->updateClipboardUI()V

    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v7}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    :cond_2
    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_3

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_6

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_b

    :cond_6
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged spanComposerText count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurSelStart= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurSelEnd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    sub-int v0, v2, v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    if-lez v0, :cond_d

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v2, :cond_8

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt v2, v3, :cond_8

    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v6, v2, :cond_9

    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    :cond_9
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_a

    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    :cond_b
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v6, v2, :cond_c

    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    :cond_c
    sget v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x500

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    if-nez v0, :cond_e

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1

    :cond_e
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1
.end method

.method public outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v2, v3}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    return-void
.end method

.method public paste()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public playPenSelectionVibrator()Z
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->playVibrator()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public redo()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    return-void
.end method

.method public registerNotificationListener(Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;)V
    .locals 0
    .param p1    # Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    return-void
.end method

.method public removeNotificationListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    return-void
.end method

.method public resetSelection()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public restoreSelection()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public selectBWStartAndEnd(IIII)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectBWStartAndEnd start = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], startY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endX = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    const/16 v2, 0x22a

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public selectedType()I
    .locals 5

    const/4 v3, -0x1

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1    # I

    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/CharSequence;

    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected sendSelectionChangeEvent(I)V
    .locals 2
    .param p1    # I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x504

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setAutoTextSelection(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setAutoTextSelection(Z)V

    return-void
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .param p1    # Z

    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setComposingRegion(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .param p1    # Z

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorFromRangeSelection()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    :cond_2
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 3
    .param p1    # I

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x40000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultFontSize(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public setEmoji(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    return-void
.end method

.method public setHCVSelectionChangedCallback(Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;)V
    .locals 0
    .param p1    # Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    return-void
.end method

.method protected setInputConnection(Landroid/webkitsec/HtmlComposerInputConnection;)V
    .locals 0
    .param p1    # Landroid/webkitsec/HtmlComposerInputConnection;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-void
.end method

.method public setLastKeyPadState(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    return-void
.end method

.method public setOnInsertedImageHitListener(Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;)V
    .locals 0
    .param p1    # Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;)V
    .locals 0
    .param p1    # Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    return-void
.end method

.method public setPageZoom(F)V
    .locals 3
    .param p1    # F

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageZoom factor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebClipboard;->setZoomFactorForPasting(F)V

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    if-gt v0, v2, :cond_3

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebClipboard;->setWidthForCopiedImage(I)V

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x228

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    goto :goto_0
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-void
.end method

.method public setRotationFlag(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    return-void
.end method

.method public setSelectionHandle(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    return-void
.end method

.method public setShiftKeyState(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clear()V

    sget-object v0, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    return-void
.end method

.method public textChangedForWatcher()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public textChangedForWatcher(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public textChangedForWatcher(Z)V
    .locals 4
    .param p1    # Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v3, ""

    invoke-interface {v2, v3, v1, v1, v0}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public textToSpeech(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "sendAccessbilityEvent [ 16]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public toggleBold()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleItalic()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleUnderline()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public translate()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v3

    if-ne v6, v3, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.translator.TRANSLATE_RESULT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "mode"

    const-string v4, "input"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedHtmlText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "source_text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "html_source_text"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "use_broadcast_receiver"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "html_composer_view_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "translate() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "caller"

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "auto_start_translation"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "client_id"

    const-string v4, "2k8BjWu5Wc"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public undo()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    return-void
.end method

.method public undoRedoStateReset()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->unmarkWord(Ljava/lang/String;)V

    return-void
.end method

.method public updateIMSelectionToEditor(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public updateOutlineDrawRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    return-void
.end method
