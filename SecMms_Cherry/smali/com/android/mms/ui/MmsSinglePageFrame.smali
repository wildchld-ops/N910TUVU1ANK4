.class public Lcom/android/mms/ui/MmsSinglePageFrame;
.super Landroid/widget/FrameLayout;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/DirectCallActivityInterface;


# static fields
.field private static final CREATE_MODEL_TOLERANCY:Z = true

.field private static DEBUG_LOG:Z = false

.field private static final FAST_PINCH_ZOOM:Z = true

.field public static final FOLDER_NAVI_COLUMN_MSG_ID:I = 0x1

.field public static final FOLDER_NAVI_COLUMN_MSG_TYPE:I = 0x0

.field public static final FOLDER_NAVI_COLUMN_THREAD_ID:I = 0x2

.field static final LISTEN_AUDIO:I = 0x3

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field public static final MENU_PLAY_SLIDESHOW:I = 0x64

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field public static final RESULT_FINISH_ALL:I = 0x2

.field public static final RESULT_NORMAL:I = 0x1

.field public static final SIZE_DOWN:I = 0x1

.field public static final SIZE_UP:I = 0x0

.field private static final START_ACTIVITY_SLIDE_PLAY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Mms/MmsSinglePageFrame"

.field static final VIEW_IMAGE:I = 0x1

.field static final VIEW_VIDEO:I = 0x2

.field public static bMultiTouch:Z

.field public static bMultiTouchFinished:Z

.field public static staticAttachment:Lcom/android/mms/model/AttachmentModel;

.field public static staticAudioModel:Lcom/android/mms/model/AudioModel;

.field public static staticClickUri:Landroid/net/Uri;

.field public static staticImageModel:Lcom/android/mms/model/ImageModel;

.field public static staticSlideIndex:I

.field public static staticVideoModel:Lcom/android/mms/model/VideoModel;


# instance fields
.field private DEBUG:Z

.field private final DEFAULT_FONT_SIZE_FOR_TEXT:F

.field private final MAX_TEXT_ZOOM_LEVEL:F

.field private final MIN_TEXT_ZOOM_LEVEL:F

.field private final POINTER_COUNT:I

.field private PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

.field private final SCROLL_MODE_KEEP_LATEST_POS:I

.field private final SCROLL_MODE_TOP:I

.field private final ZOOM_STEP:F

.field private attachmentInfoArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private bar:Landroid/app/ActionBar;

.field private currentEmailPage:I

.field private currentScrollY:I

.field private endX:I

.field private endY:I

.field firstFingerX:F

.field firstFingerY:F

.field private firstVisibleTextViewId:I

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAttachViewHeight:I

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioViewHeight:I

.field mContentResolver:Landroid/content/ContentResolver;

.field private mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field private mEmailView:Z

.field private mEndSlideAnim:I

.field mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsPreview:Z

.field private mMainLinearLayout:Landroid/widget/LinearLayout;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageNo:Landroid/widget/TextView;

.field private mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollHandler:Landroid/os/Handler;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSlideShowModelLen:I

.field private mStartSlideAnim:I

.field private mSubject:Landroid/widget/TextView;

.field mTitleIcon01:Landroid/widget/ImageView;

.field mTitleIcon02:Landroid/widget/ImageView;

.field mTitleIcon03:Landroid/widget/ImageView;

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private mainLinearLayout:Landroid/widget/LinearLayout;

.field private model:Lcom/android/mms/model/SlideshowModel;

.field public msgId:J

.field private scale1:F

.field private scrollY:F

.field secondFingerX_new:F

.field secondFingerX_old:F

.field secondFingerY_new:F

.field secondFingerY_old:F

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J

.field private totalEmailPages:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    sput-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    sput-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;

    const/4 v6, -0x1

    const/high16 v5, 0x41a00000

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIsPreview:Z

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame$1;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$3;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->ZOOM_STEP:F

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->MAX_TEXT_ZOOM_LEVEL:F

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->MIN_TEXT_ZOOM_LEVEL:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->POINTER_COUNT:I

    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->SCROLL_MODE_TOP:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->SCROLL_MODE_KEEP_LATEST_POS:I

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$12;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v6, -0x1

    const/high16 v5, 0x41a00000

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIsPreview:Z

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame$1;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$3;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->ZOOM_STEP:F

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->MAX_TEXT_ZOOM_LEVEL:F

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->MIN_TEXT_ZOOM_LEVEL:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->POINTER_COUNT:I

    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->SCROLL_MODE_TOP:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->SCROLL_MODE_KEEP_LATEST_POS:I

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$12;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method private LogForMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const-string v2, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogForMotionEvent ev["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsSinglePageFrame;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/app/Activity;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/content/Intent;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MmsSinglePageFrame;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mStartSlideAnim:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MmsSinglePageFrame;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mEndSlideAnim:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->drawTitle_Subject()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Landroid/content/ActivityNotFoundException;
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsSinglePageFrame;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method private addRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private clearArrayListsForSinglePage()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private createModel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createModel(), msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "createModel(), [1] use mMsgItem.mSlideshow"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "createModel(), [2] load from createFromMessageUri"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/net/Uri;

    const/4 v0, 0x0

    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v7, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v1, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x43870000

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    throw v1

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private createViewTitleHeader()V
    .locals 4

    const/16 v2, 0x8

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "createViewTitleHeader"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f0b02c0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon01:Landroid/widget/ImageView;

    const v0, 0x7f0b02c1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const v0, 0x7f0b02c2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon03:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->setTitleIcon()V

    :cond_1
    return-void
.end method

.method private decideModeForZoom()I
    .locals 8

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    sub-float v0, v5, v6

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    sub-float v1, v5, v6

    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    sub-float v0, v5, v6

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    sub-float v1, v5, v6

    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distancePrevious="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",distanceCurrent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    const/4 v4, -0x1

    :goto_0
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decideModeForZoom, retVal ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v4

    :cond_2
    cmpg-float v5, v3, v2

    if-gez v5, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    cmpl-float v5, v3, v2

    if-lez v5, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private drawTitle_Subject()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/ViewTitleHeader;->getSenderString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateActionBarTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSubject:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private dumpLogs(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "Mms/MmsSinglePageFrame"

    invoke-static {v0, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enqueueMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->checkTextSelectorState()Z

    move-result v0

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    const-string v1, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-boolean v2, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() firstFingerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",firstFingerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private exitMmsSinglePageFrame()V
    .locals 4

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageFrame$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$16;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->markAsRead(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private findCurrentScrollPos()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    const v0, 0x7f0b02c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentScrollY:I

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findCurrentScrollPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private findFirstVisibleTextView()V
    .locals 8

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v5, :cond_0

    const v5, 0x7f0b02c4

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    const v5, 0x7f0b0291

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scrollY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    if-lez v2, :cond_4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_4

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [found case #1 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", viewObject.getHeight()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    if-lez v2, :cond_7

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_7

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_6

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [found case #2 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    goto :goto_1

    :cond_7
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_8

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", heightSum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    const-string v5, "FAST_PINCH_ZOOM/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findFirstVisibleTextView: [not found T_T] valid firstVisibleTextViewId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getBoxUriFromBoxId(I)Landroid/net/Uri;
    .locals 4
    .param p1    # I

    const-string v1, "Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoxUriFromBoxId, boxId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .param p1    # Landroid/net/Uri;
    .param p2    # J
    .param p4    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v10, Lcom/android/mms/ui/MmsSinglePageFrame$2;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/MmsSinglePageFrame$2;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;IFZ)V

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v0, v9

    :goto_2
    :try_start_3
    const-string v1, "Mms/MmsSinglePageFrame"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v9

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, v9

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_2
.end method

.method private getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/mms/model/MediaModel;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMessageInformationFromIntent()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "msgId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "previewLaunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIsPreview:Z

    :goto_0
    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIsPreview:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private getSubject()Ljava/lang/String;
    .locals 6

    const-string v2, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0160

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MMSSUBJECT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const-string v3, "GATE"

    const-string v4, "<GATE-M>MMSSUBJECT:NULL</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Mms/MmsSinglePageFrame"

    const-string v4, "Cannot display the slide title."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/ActivityNotFoundException;
    .param p2    # Landroid/content/Intent;

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "ActivityNotFoundException"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c011c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private hasTopText(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 2
    .param p1    # Lcom/android/mms/model/SlideshowModel;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateTitleHeader_Subject()V
    .locals 2

    const v1, 0x7f0b02bc

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    :goto_0
    const v1, 0x7f0b02be

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSubject:Landroid/widget/TextView;

    const v1, 0x7f0b02c6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mPageNo:Landroid/widget/TextView;

    return-void

    :cond_0
    const v1, 0x7f0b03bc

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private init()V
    .locals 1

    const/16 v0, 0x5b

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAttachViewHeight:I

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAttachViewHeight:I

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioViewHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    return-void
.end method

.method private initMotionEventForPinchZoom()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerX:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstFingerY:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_old:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_old:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerX_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->secondFingerY_new:F

    return-void
.end method

.method private invokeRefreshTextArea()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->checkTextSelectorState()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    const-string v5, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-boolean v7, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    :goto_0
    return-void

    :cond_1
    const v4, 0x7f0b0291

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeRefreshTextArea: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    if-lez v1, :cond_4

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", viewObject.isFocused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_6

    const v4, 0x7f0b02c4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scrollY:F

    float-to-int v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method private invokeResizeTextArea()V
    .locals 12

    const/4 v11, 0x1

    const/high16 v10, 0x42340000

    const/high16 v9, 0x41200000

    const/high16 v8, 0x3f800000

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->checkTextSelectorState()Z

    move-result v5

    if-ne v5, v11, :cond_2

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    const-string v6, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    :cond_1
    return-void

    :cond_2
    const v5, 0x7f0b0291

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_3

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeResizeTextArea: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->decideModeForZoom()I

    move-result v4

    if-nez v4, :cond_8

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    add-float/2addr v5, v8

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_4

    iput v10, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    :cond_4
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIZE_UP:scale1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    if-lez v1, :cond_7

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_6

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", viewObject.isFocused="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    if-ne v4, v11, :cond_1

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_9

    iput v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    :cond_9
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_5

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIZE_DOWN:scale1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeResizeTextAreaOnlySelectedItem()V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, 0x42340000

    const/high16 v8, 0x41200000

    const/high16 v7, 0x3f800000

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->checkTextSelectorState()Z

    move-result v4

    if-ne v4, v10, :cond_2

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    const-string v5, "invokeResizeTextAreaOnlySelectedItem: checkTextSelectorState()=true [RETURN]"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v4, 0x7f0b0291

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeResizeTextAreaOnlySelectedItem: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    if-ltz v4, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->decideModeForZoom()I

    move-result v3

    if-nez v3, :cond_7

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    add-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    iput v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    :cond_4
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_5

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_UP:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    if-lez v4, :cond_1

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeResizeTextAreaOnlySelectedItem: firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    check-cast v2, Landroid/widget/TextView;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    :cond_7
    if-ne v3, v10, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_8

    iput v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    :cond_8
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_5

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_DOWN:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isValidSlideShow()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsSinglePageFrame"

    const-string v2, "isValidSlideShow(),[1] mMsgItem=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSlideShow(),[3] retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "Mms/MmsSinglePageFrame"

    const-string v2, "isValidSlideShow(),[2] mMsgItem.mSlideshow=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveSmsView(Z)V
    .locals 19
    .param p1    # Z

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    const/4 v2, 0x1

    if-ne v12, v2, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    if-ge v9, v12, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move/from16 v16, v9

    if-eqz p1, :cond_6

    if-nez v9, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v16, v12, -0x1

    :goto_2
    const v18, 0x7f050004

    const v10, 0x7f050005

    :goto_3
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    :goto_4
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x10

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_b

    if-eqz p1, :cond_9

    if-nez v16, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v16, v12, -0x1

    :goto_5
    add-int/lit8 v17, v17, 0x1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    goto :goto_4

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v12, -0x1

    if-ne v9, v2, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v16, 0x0

    :goto_6
    const v18, 0x7f050002

    const v10, 0x7f050003

    goto :goto_3

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v16, 0x0

    goto :goto_5

    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    const/4 v11, 0x0

    const-string v2, "sms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v11, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_c
    :goto_7
    move/from16 v0, v16

    if-eq v0, v9, :cond_e

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageFrame;->mStartSlideAnim:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mEndSlideAnim:I

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageFrame$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageFrame$15;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->markAsRead(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {v11, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private navigateMsgFolderViewMode(Z)V
    .locals 21
    .param p1    # Z

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->getBoxId()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/MmsSinglePageFrame;->getBoxUriFromBoxId(I)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    const/4 v2, 0x1

    if-ge v14, v2, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v14, v2, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    if-ge v10, v14, :cond_4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move/from16 v18, v10

    if-eqz p1, :cond_7

    if-nez v10, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v18, v14, -0x1

    :goto_2
    const v20, 0x7f050004

    const v11, 0x7f050005

    :goto_3
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v13, -0x1

    :goto_4
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "m_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v2, "Mms/MmsSinglePageFrame"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmsMsgType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /MESSAGE_TYPE_NOTIFICATION_IND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x82

    if-ne v13, v2, :cond_c

    if-eqz p1, :cond_a

    if-nez v18, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v18, v14, -0x1

    :goto_5
    add-int/lit8 v19, v19, 0x1

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_4

    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v14, -0x1

    if-ne v10, v2, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v18, 0x0

    :goto_6
    const v20, 0x7f050002

    const v11, 0x7f050003

    goto :goto_3

    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v18, v18, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v18, 0x0

    goto :goto_5

    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    const/4 v12, 0x0

    const-string v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v12, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_d
    :goto_7
    move/from16 v0, v18

    if-eq v0, v10, :cond_f

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageFrame;->mStartSlideAnim:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mEndSlideAnim:I

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageFrame$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageFrame$18;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->markAsRead(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_e
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {v12, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private presentAttachmentList()V
    .locals 4

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->findAttachmentList(J)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presentAttachmentList:lenOfAttah="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->addAttachmentListView(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private presentModel(Lcom/android/mms/model/SlideshowModel;)V
    .locals 12
    .param p1    # Lcom/android/mms/model/SlideshowModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_0

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:presentModel() slideTotalNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_e

    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_1

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:[1]slideModel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v5

    check-cast v3, Lcom/android/mms/model/TextModel;

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v2, v5

    check-cast v2, Lcom/android/mms/model/ImageModel;

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v4, v5

    check-cast v4, Lcom/android/mms/model/VideoModel;

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v1, v5

    check-cast v1, Lcom/android/mms/model/AudioModel;

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_8

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_7

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    const-string v10, "mImageModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0, v2, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentImage(Lcom/android/mms/model/ImageModel;I)V

    :cond_8
    if-eqz v4, :cond_a

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_9

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    const-string v10, "mVideoModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, v4, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentVideo(Lcom/android/mms/model/VideoModel;I)V

    :cond_a
    if-eqz v3, :cond_c

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v9, :cond_b

    const-string v9, "kkahn/Mms/MmsSinglePageFrame"

    const-string v10, "mTextModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentText(Lcom/android/mms/model/TextModel;I)V

    :cond_c
    if-eqz v1, :cond_d

    const/4 v9, 0x1

    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V
    .locals 5
    .param p1    # Lcom/android/mms/model/SlideshowModel;
    .param p2    # I

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->clearArrayListsForSinglePage()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->addMmsDetailInfoToSlidePresenter()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentModel(Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentAttachmentList()V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mScrollHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageFrame$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$4;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MmsSinglePageFrame"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private removeRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private saveAttachFile(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/android/mms/export/MmsPartExport;->savePart(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method private saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p1    # Lcom/android/mms/model/MediaModel;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Landroid/net/Uri;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 0
    .param p0    # Lcom/android/mms/model/AttachmentModel;

    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method

.method public static setAudioModel(Lcom/android/mms/model/AudioModel;)V
    .locals 2
    .param p0    # Lcom/android/mms/model/AudioModel;

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    const-string v1, "setAudioModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    return-void
.end method

.method public static setClickUri(Landroid/net/Uri;)V
    .locals 3
    .param p0    # Landroid/net/Uri;

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickUri:uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticClickUri:Landroid/net/Uri;

    return-void
.end method

.method public static setImageModel(Lcom/android/mms/model/ImageModel;)V
    .locals 0
    .param p0    # Lcom/android/mms/model/ImageModel;

    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticImageModel:Lcom/android/mms/model/ImageModel;

    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setSlideIndex(I)V
    .locals 3
    .param p0    # I

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlideIndex:slideindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticSlideIndex:I

    return-void
.end method

.method public static setVideoModel(Lcom/android/mms/model/VideoModel;)V
    .locals 2
    .param p0    # Lcom/android/mms/model/VideoModel;

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    const-string v1, "setVideoModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private touchListener(IIII)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    sub-int v1, p1, p2

    sub-int v2, p3, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    if-nez v3, :cond_2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->navigateMsgFolderViewMode(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->moveSmsView(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->moveSmsView(Z)V

    goto :goto_1
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->bar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->bar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->bar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateFontsizeForTextAreaVolumeKey()V
    .locals 8

    const v5, 0x7f0b0291

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshFontsizeForTextAreaVolumeKey: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    if-lez v2, :cond_2

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updatePageNo()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mPageNo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentEmailPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->totalEmailPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTitleIcon()V
    .locals 2

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "updateTitleIcon"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->createViewTitleHeader()V

    return-void
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageFrame"

    const-string v4, "addAttachmentListView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
    .locals 18
    .param p1    # Lcom/android/mms/model/AttachmentModel;

    sget-boolean v13, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v13, :cond_0

    const-string v13, "kkahn/Mms/MmsSinglePageFrame"

    const-string v14, "addAttachmentOneView"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v3, p1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v13, 0x7f04001f

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v13, 0x7f0b0075

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v13, 0x7f0b0074

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v13, 0x7f0b0077

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x0

    const/16 v13, 0x2e

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ltz v9, :cond_1

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v13, "dm"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".dcf"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_2
    const-string v13, "cid:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "Cid:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :cond_4
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "text/x-vCard"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "text/x-vcard"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_5
    const v13, 0x7f02013a

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_0
    const v13, 0x7f0b0291

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAttachViewHeight:I

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const/high16 v14, -0x10000

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setAttachment(Lcom/android/mms/model/AttachmentModel;)V

    new-instance v13, Lcom/android/mms/ui/MmsSinglePageFrame$13;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/ui/MmsSinglePageFrame$13;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lcom/android/mms/ui/MmsSinglePageFrame$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/ui/MmsSinglePageFrame$14;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    const-string v13, "text/x-vCalendar"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const v13, 0x7f020138

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_9
    const-string v13, "text/x-vNote"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const v13, 0x7f02013c

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_a
    const-string v13, "text/x-vtodo"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const v13, 0x7f02013e

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_b
    const v13, 0x7f020136

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V
    .locals 13
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p4    # Lcom/android/mms/model/AudioModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/android/mms/model/AudioModel;",
            ")V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v8, 0x7f04001f

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0b0075

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0b0074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v8, 0x7f020131

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const v9, 0x7f0b0077

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    const/4 v2, 0x0

    const/16 v8, 0x2e

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v8, "dm"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {p2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".dcf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v8, "cid:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Cid:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v8, :cond_4

    const v8, 0x7f0b0291

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    iget v12, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioViewHeight:I

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const/high16 v9, -0x10000

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAudioInfoView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->setClickUri(Landroid/net/Uri;)V

    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MmsSinglePageFrame;->setAudioModel(Lcom/android/mms/model/AudioModel;)V

    new-instance v8, Lcom/android/mms/ui/MmsSinglePageFrame$10;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$10;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/mms/ui/MmsSinglePageFrame$11;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$11;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addMmsDetailInfoToSlidePresenter()V
    .locals 5

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageFrame"

    const-string v4, "addMmsDetailInfoToSlidePresenter"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b0291

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public checkTextSelectorState()Z
    .locals 8

    const/4 v3, 0x0

    const v5, 0x7f0b0291

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkTextSelectorState: childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    if-lez v1, :cond_3

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hit TextView, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isSelected() TRUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v4

    if-ne v4, v10, :cond_6

    move v1, v5

    :goto_0
    if-eqz v1, :cond_1

    const/high16 v4, -0x3d100000

    invoke-virtual {p1, v9, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListViewActivity;->getXpositon()I

    move-result v2

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dispatchTouchEvent], offset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", xPos ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sub-int v4, v3, v2

    if-lez v4, :cond_1

    int-to-float v4, v2

    sub-float v4, v9, v4

    invoke-virtual {p1, v4, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchTouchEvent(),action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_4

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchTouchEvent(), bMultiTouch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bMultiTouchFinished="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    if-eq v4, v5, :cond_5

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    if-ne v4, v5, :cond_10

    :cond_5
    sput-boolean v6, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    move v4, v5

    :goto_2
    return v4

    :cond_6
    move v1, v6

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startY:I

    goto :goto_1

    :pswitch_2
    sput-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_POINTER_DOWN], bMultiTouch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_8

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->initMotionEventForPinchZoom()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findFirstVisibleTextView()V

    goto :goto_1

    :pswitch_3
    sput-boolean v5, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouchFinished:Z

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_9

    const-string v4, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_POINTER_UP], bMultiTouch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_a

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    :cond_a
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->invokeRefreshTextArea()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->endX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->endY:I

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_b

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_UP]startY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_c

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    :cond_c
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-eq v4, v5, :cond_d

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v10, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-nez v4, :cond_3

    :cond_d
    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startX:I

    iget v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->endX:I

    iget v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->startY:I

    iget v9, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->endY:I

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/mms/ui/MmsSinglePageFrame;->touchListener(IIII)V

    goto/16 :goto_1

    :pswitch_5
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_e

    const-string v4, "Mms/MmsSinglePageFrame"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_MOVE],bMultiTouch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v4, :cond_f

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    :cond_f
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    if-ne v4, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->enqueueMotionEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->invokeResizeTextAreaOnlySelectedItem()V

    goto/16 :goto_1

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findAttachmentList(J)Ljava/util/ArrayList;
    .locals 3
    .param p1    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mms/export/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageFrame"

    const-string v1, "findAttachmentList > No Attachment"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->attachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->isAvailableDirectCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;)V
    .locals 8
    .param p1    # Ljava/lang/Runnable;

    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const/16 v3, 0x80

    new-instance v4, Lcom/android/mms/ui/MmsSinglePageFrame$17;

    invoke-direct {v4, p0, v6, v7, p1}, Lcom/android/mms/ui/MmsSinglePageFrame$17;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateFontsizeForTextAreaVolumeKey()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1    # Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findCurrentScrollPos()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mScrollHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MmsSinglePageFrame$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$5;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to LANDSCAPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to PORTRAIT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
    .param p2    # Landroid/content/Intent;

    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mScrollHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getMessageInformationFromIntent()V

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v6, "mms"

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->isValidSlideShow()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v6, "mms"

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    const-string v6, "mms"

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->inflateTitleHeader_Subject()V

    const v0, 0x7f0b0291

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no of slides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->init()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->model:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mSlideShowModelLen:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->scale1:F

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getMmsRecipients(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->createDirectCallingManager()V

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "Cannot present the slide show."

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "Mms/MmsSinglePageFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown(),keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->increaseFontSize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateFontsizeForTextAreaVolumeKey()V

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->decreaseFontSize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateFontsizeForTextAreaVolumeKey()V

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->exitMmsSinglePageFrame()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    const-string v1, "Mms/MmsSinglePageFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAddContactIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mAddContactIntent:Landroid/content/Intent;

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "msgId"

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "thread_id"

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->threadId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->exitMmsSinglePageFrame()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "onPause()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    const/16 v0, 0x64

    const v1, 0x7f0c004f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200fb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "onStart()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->drawTitle_Subject()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->updateTitleIcon()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->addRecipientsListener()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "onStop()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->dumpLogs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->removeRecipientsListener()V

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .param p1    # Lcom/android/mms/data/Contact;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/MmsSinglePageFrame$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$19;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V
    .locals 3
    .param p1    # Lcom/android/mms/model/AudioModel;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V

    return-void
.end method

.method protected presentImage(Lcom/android/mms/model/ImageModel;I)V
    .locals 2
    .param p1    # Lcom/android/mms/model/ImageModel;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V

    return-void
.end method

.method protected presentText(Lcom/android/mms/model/TextModel;I)V
    .locals 6
    .param p1    # Lcom/android/mms/model/TextModel;
    .param p2    # I

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0132

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0133

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method protected presentVideo(Lcom/android/mms/model/VideoModel;I)V
    .locals 3
    .param p1    # Lcom/android/mms/model/VideoModel;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ab

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/mms/model/ImageModel;
    .param p3    # I

    sget-boolean v8, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v8, :cond_0

    const-string v8, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImageWithFrame/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v8, 0x7f0b0291

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v8, 0x7f040079

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0b02b7

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v8, 0x7f0b02b9

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    const v8, 0x7f0b02b8

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02009a

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/MmsSinglePageFrame;->setClickUri(Landroid/net/Uri;)V

    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setSlideIndex(I)V

    invoke-static {p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->setImageModel(Lcom/android/mms/model/ImageModel;)V

    new-instance v8, Lcom/android/mms/ui/MmsSinglePageFrame$6;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$6;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/mms/ui/MmsSinglePageFrame$7;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$7;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v1

    const-string v8, "Mms/MmsSinglePageFrame"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLockIcon(Z)V
    .locals 3
    .param p1    # Z

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockIcon(), islock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/OnEventListener;

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method public setScrollPosition(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    const v0, 0x7f0b02c4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition**SCROLL_MODE_TOP]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v1, "[setScrollPosition]mMainScrollView.scrollTo(0, 0)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition**SCROLL_MODE_KEEP_LATEST_POS]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentScrollY:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition]mMainScrollView.scrollTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->currentScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "Mms/MmsSinglePageFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # I

    const/16 v6, 0xe

    const/4 v5, 0x1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setTextWithTextView(),slideIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ntext***start***\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ntext***end***\n,isAttachment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f0b0291

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    if-nez p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x40000000

    invoke-static {v2}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const-string v2, "#00AEEF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v2, 0xc

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG:Z

    if-eqz v2, :cond_2

    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinksClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    const/high16 v2, 0x41a00000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTitleIcon()V
    .locals 7

    const/4 v6, 0x0

    const-string v2, "mms"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v0

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "Mms/MmsSinglePageFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTitleIcon, isMsgLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const v3, 0x7f02026a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon01:Landroid/widget/ImageView;

    const v3, 0x7f020295

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # I
    .param p4    # Lcom/android/mms/model/VideoModel;

    const/4 v10, 0x0

    sget-boolean v7, Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z

    if-eqz v7, :cond_0

    const-string v7, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImage/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v7, 0x7f0b0291

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v5, Landroid/view/View;

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v7, 0x7f040079

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x7f0b02b7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v7, 0x7f0b02b9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const v7, 0x7f0b02b8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02009b

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_1
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MmsSinglePageFrame;->setClickUri(Landroid/net/Uri;)V

    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setSlideIndex(I)V

    invoke-static {p4}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVideoModel(Lcom/android/mms/model/VideoModel;)V

    new-instance v7, Lcom/android/mms/ui/MmsSinglePageFrame$8;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$8;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/mms/ui/MmsSinglePageFrame$9;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageFrame$9;-><init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    const-string v7, "Mms/MmsSinglePageFrame"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public splitListChanged()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 12
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const/4 v0, 0x1

    const-string v5, "m_type"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v5, "msg_box"

    aput-object v5, v2, v0

    const/4 v9, 0x0

    const-string v11, ""

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v11

    :catch_0
    move-exception v10

    :try_start_1
    const-string v0, "Mms/MmsSinglePageFrame"

    const-string v3, "Failed view message details"

    invoke-static {v0, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
