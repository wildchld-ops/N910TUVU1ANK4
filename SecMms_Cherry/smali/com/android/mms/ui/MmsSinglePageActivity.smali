.class public Lcom/android/mms/ui/MmsSinglePageActivity;
.super Landroid/app/Activity;
.source "MmsSinglePageActivity.java"

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

.field private static final TAG:Ljava/lang/String; = "Mms/MmsSinglePageActivity"

.field static final VIEW_IMAGE:I = 0x1

.field private static final VIEW_TITLE_ICON_DEFAULT_MARGIN_RIGHT:F = 16.0f

.field private static final VIEW_TITLE_ICON_WIDTH:F = 25.0f

.field static final VIEW_VIDEO:I = 0x2

.field public static bMultiTouch:Z

.field public static bMultiTouchFinished:Z

.field private static mInsertedSimNum:I

.field private static mIsSpam:Z

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

.field private RIGHTPADDING:I

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

.field private currentScrollY_changed:I

.field private endX:I

.field private endY:I

.field firstFingerX:F

.field firstFingerY:F

.field private firstVisibleTextViewId:I

.field private isFromFolderView:Z

.field private mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAudioInfoView:Landroid/view/View;

.field mBlockFlickUntilMillis:J

.field private mCheckTextViewSelectable:Z

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContentResolver:Landroid/content/ContentResolver;

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

.field private final mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

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

.field private mRequestLockedMessageView:Z

.field private mRequestReservedMessageView:Z

.field private mScrollHandler:Landroid/os/Handler;

.field private mSeen:I

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

.field misTalkbackOn:Z

.field private model:Lcom/android/mms/model/SlideshowModel;

.field private msgId:J

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

.field private totalHeightY:I

.field private totalHeightY_changed:I

.field update_read:Z

.field update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    sput v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mInsertedSimNum:I

    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    sput-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, -0x1

    const/high16 v5, 0x41a00000

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_seen:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mBlockFlickUntilMillis:J

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSeen:I

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->misTalkbackOn:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->isFromFolderView:Z

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity$1;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$6;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEFAULT_FONT_SIZE_FOR_TEXT:F

    iput v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->ZOOM_STEP:F

    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->MAX_TEXT_ZOOM_LEVEL:F

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->MIN_TEXT_ZOOM_LEVEL:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->POINTER_COUNT:I

    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->SCROLL_MODE_TOP:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->SCROLL_MODE_KEEP_LATEST_POS:I

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$18;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$19;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

    return-void
.end method

.method private LogForMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "kkahn/Mms/MmsSinglePageActivity"

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

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MmsSinglePageActivity;->setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/text/style/ForegroundColorSpan;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MmsSinglePageActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MmsSinglePageActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->initActionBar()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->drawTitle_Subject()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->adjustSubjectWidth()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->handlerIfNoActivityFound(Landroid/content/ActivityNotFoundException;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    return v0
.end method

.method private addMmsInfoLayer()V
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v8, 0x7f04007a

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0b02ba

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x7f0b02bb

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-direct {p0, v8, v9, v10}, Lcom/android/mms/ui/MmsSinglePageActivity;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleUsingDateTimeOrder()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/mms/export/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c03fd

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/android/mms/ui/MmsSinglePageActivity$9;

    invoke-direct {v8, p0, v7}, Lcom/android/mms/ui/MmsSinglePageActivity$9;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v8, :cond_0

    const v8, 0x7f0b0291

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private addRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private adjustSubjectWidth()V
    .locals 10

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon03:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplaySimIcon()Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f0b02c3

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->RIGHTPADDING:I

    if-lez v6, :cond_4

    const/high16 v7, 0x41c80000

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v7

    mul-int/2addr v7, v6

    const/high16 v8, 0x41800000

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    add-int v5, v7, v8

    :goto_0
    const-string v7, "Mms/MmsSinglePageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustSubjectWidth(),visibleIconNum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rightPaddingCur="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    move v3, v5

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v4, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_4
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->RIGHTPADDING:I

    goto :goto_0
.end method

.method private checkContactValidityWithDelay(I)V
    .locals 4

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkContactValidityWithDelay():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/MmsSinglePageActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$7;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clearArrayListsForSinglePage()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private createDirectCallingManager()V
    .locals 2

    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/DirectCallingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mms/util/DirectCallingManager;-><init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    goto :goto_0
.end method

.method private createModel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createModel(), msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "createModel(), [1] use mMsgItem.mSlideshow"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "createModel(), [2] load from createFromMessageUri"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    throw v2

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private createViewTitleHeader()V
    .locals 6

    const/4 v5, 0x0

    const/16 v3, 0x8

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "createViewTitleHeader"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f0b02c0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    const v1, 0x7f0b02c1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const v1, 0x7f0b02c2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon03:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->setTitleIcon()V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplaySimIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const v1, 0x7f0b02c3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v5}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private decideModeForZoom()I
    .locals 8

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    sub-float v0, v5, v6

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    sub-float v1, v5, v6

    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    sub-float v0, v5, v6

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    sub-float v1, v5, v6

    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

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
    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    const/4 v4, -0x1

    :goto_0
    sget-boolean v5, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/MmsSinglePageActivity"

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
    .locals 7

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private dumpLogs(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Mms/MmsSinglePageActivity"

    invoke-static {v0, p1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enqueueMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v0

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() firstFingerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",firstFingerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMotionEvent() secondFingerX_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",secondFingerY_new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private exitMmsSinglePageActivity()V
    .locals 4

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$23;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$23;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0
.end method

.method private findCurrentScrollPos()V
    .locals 6

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_0

    const v3, 0x7f0b02c4

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    const v3, 0x7f0b0291

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findCurrentScrollPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private findFirstVisibleTextView()V
    .locals 7

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v4, :cond_0

    const v4, 0x7f0b02c4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_1

    const v4, 0x7f0b0291

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scrollY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    if-lez v2, :cond_5

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_5

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView: [found case #1 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    :cond_4
    :goto_1
    return-void

    :cond_5
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", viewObject.getHeight()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    if-lez v2, :cond_8

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_8

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView: [found case #2 ^_^] valid firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iput v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    goto :goto_1

    :cond_8
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_9

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView<LOOP>, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", heightSum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_4

    const-string v4, "FAST_PINCH_ZOOM/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstVisibleTextView: [not found T_T] valid firstVisibleTextViewId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getBoxUriFromBoxId(I)Landroid/net/Uri;
    .locals 4

    const-string v1, "Mms/MmsSinglePageActivity"

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

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v1}, Lcom/android/mms/ui/MessageItem;->constructProjection(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v3, :cond_1

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "seen"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSeen:I

    new-instance v10, Lcom/android/mms/ui/MmsSinglePageActivity$5;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/MmsSinglePageActivity$5;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;IFZ)V

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    sget-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v0, v9

    :goto_3
    :try_start_3
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_4
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v9

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v0, v9

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v8

    goto :goto_3
.end method

.method private getContentType(Lcom/android/mms/model/MediaModel;)Ljava/lang/String;
    .locals 3

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

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMessageInformationFromIntent()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "msgId"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    const-string v2, "fromFolderView"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->isFromFolderView:Z

    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFromFolderView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->isFromFolderView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "requestLockedMessageView"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "requestReservedMessageView"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    :cond_1
    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "previewLaunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    :goto_0
    const-string v2, "isSpam"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    iget-wide v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    :goto_1
    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsPreview:Z

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private getSubject()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0160

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

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

    const-string v3, "Mms/MmsSinglePageActivity"

    const-string v4, "Cannot display the slide title."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getTypeIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

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

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "ActivityNotFoundException"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c011c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private hasTopText(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 2

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

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    :goto_0
    const v1, 0x7f0b02be

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSubject:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->RIGHTPADDING:I

    return-void

    :cond_0
    const v1, 0x7f0b03bc

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private init()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    return-void
.end method

.method private initActionBar()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040001

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0b0035

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v9, 0x7f0b0036

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/mms/ui/MmsSinglePageActivity$3;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$3;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/mms/ui/MmsSinglePageActivity$4;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$4;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-lez v8, :cond_d

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayNameAndNumberonTitle()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayLoation()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/mms/ui/MessageUtils;->getPhoneNumberLocator(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f0c02b6

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasName()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41880000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41400000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41600000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasName()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_9
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_a

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41880000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41400000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41600000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_b
    if-eqz v4, :cond_c

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41880000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v9, 0x7f0c013b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v9, 0x7f0c000b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method

.method private initMotionEventForPinchZoom()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerX:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstFingerY:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_old:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_old:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerX_new:F

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->secondFingerY_new:F

    return-void
.end method

.method private invokeRefreshTextArea()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    const-string v4, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    const v3, 0x7f0b0291

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeRefreshTextArea: childCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    if-lez v1, :cond_5

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_4

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hit TextView, i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", viewObject.isFocused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_7

    const v3, 0x7f0b02c4

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scrollY:F

    float-to-int v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method private invokeResizeTextArea()V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, 0x42340000

    const/high16 v8, 0x41200000

    const/high16 v7, 0x3f800000

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v4

    if-ne v4, v10, :cond_2

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    const-string v5, "invokeDispatchTouchEventAllChildTextArea: checkTextSelectorState()=true [RETURN]"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_3

    const v4, 0x7f0b0291

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_4

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeResizeTextArea: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->decideModeForZoom()I

    move-result v3

    if-nez v3, :cond_9

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    add-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_5

    iput v9, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    :cond_5
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_UP:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    if-lez v1, :cond_8

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

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

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    if-ne v3, v10, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_a

    iput v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    :cond_a
    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIZE_DOWN:scale1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeResizeTextAreaOnlySelectedItem()V
    .locals 10

    const/4 v9, 0x1

    const/high16 v8, 0x42340000

    const/high16 v7, 0x41200000

    const/high16 v6, 0x3f800000

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkTextSelectorState()Z

    move-result v3

    if-ne v3, v9, :cond_2

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    const-string v4, "invokeResizeTextAreaOnlySelectedItem: checkTextSelectorState()=true [RETURN]"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    const v3, 0x7f0b0291

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_4

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeResizeTextAreaOnlySelectedItem: childCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", firstVisibleTextViewId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    if-ltz v3, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->decideModeForZoom()I

    move-result v2

    if-nez v2, :cond_8

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_5

    iput v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    :cond_5
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_6

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIZE_UP:scale1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    if-lez v3, :cond_1

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeResizeTextAreaOnlySelectedItem: firstVisibleTextViewId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->firstVisibleTextViewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    check-cast v1, Landroid/widget/TextView;

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    :cond_8
    if-ne v2, v9, :cond_1

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_9

    iput v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    :cond_9
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_6

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIZE_DOWN:scale1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isExitCase()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "mMsgUri not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(J)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "mMsgId not exist!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageExist(J)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1

    :cond_0
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private isMessageExist(Landroid/net/Uri;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMessageExist(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isValidSlideShow()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "isValidSlideShow(),[1] mMsgItem=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    const-string v1, "Mms/MmsSinglePageActivity"

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
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_4

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "isValidSlideShow(),[2] mMsgItem.mSlideshow=null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPart(Landroid/content/Context;JLandroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    .locals 12

    const/4 v8, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    move-object v5, v8

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDrmRingtoneWithRights can\'t load pdu body: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadPart(),UriStringSrc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Mms/MmsSinglePageActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadPart(),part.getDataUri()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-string v9, "Mms/MmsSinglePageActivity"

    const-string v10, "loadPart(),part not found : should not reach here"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    goto/16 :goto_1
.end method

.method private moveSmsView(Z)V
    .locals 19

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1 AND hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    :cond_4
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    if-ge v9, v12, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move/from16 v16, v9

    if-eqz p1, :cond_9

    if-nez v9, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v16, v12, -0x1

    :goto_3
    const v18, 0x7f050004

    const v10, 0x7f050005

    :goto_4
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    :goto_5
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x10

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x82

    if-ne v2, v4, :cond_e

    if-eqz p1, :cond_c

    if-nez v16, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    add-int/lit8 v16, v12, -0x1

    :goto_6
    add-int/lit8 v17, v17, 0x1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    goto :goto_5

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v12, -0x1

    if-ne v9, v2, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v16, 0x0

    :goto_7
    const v18, 0x7f050002

    const v10, 0x7f050003

    goto :goto_4

    :cond_a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v16, 0x0

    goto :goto_6

    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    const/4 v11, 0x0

    const-string v2, "sms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_10

    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_11

    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_11
    :goto_8
    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->isFromFolderView:Z

    if-eqz v2, :cond_12

    const-string v2, "fromFolderView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_12
    move/from16 v0, v16

    if-eq v0, v9, :cond_16

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$22;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "mms"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v11, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "isSpam"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_15

    const-string v2, "requestLockedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestReservedMessageView:Z

    if-eqz v2, :cond_11

    const-string v2, "requestReservedMessageView"

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/mms/ui/MmsSinglePageActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private navigateMsgFolderViewMode(Z)V
    .locals 21

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->getBoxId()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBoxUriFromBoxId(I)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->PROJECTION_FOLDER_VIEW:[Ljava/lang/String;

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

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

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

    const-string v2, "Mms/MmsSinglePageActivity"

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

    if-eqz v2, :cond_f

    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_d
    :goto_7
    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->isFromFolderView:Z

    if-eqz v2, :cond_e

    const-string v2, "fromFolderView"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_e
    move/from16 v0, v18

    if-eq v0, v10, :cond_10

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$29;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$29;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v12, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    move-wide v0, v15

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/ui/MmsSinglePageActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method private preCalculateImageBoudns(Landroid/widget/ImageView;II)V
    .locals 4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, p2, p3, v2}, Lcom/android/mms/model/ImageModel;->calcThumbnailImageBounds(Landroid/graphics/Point;IIZ)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private presentAttachmentList()V
    .locals 4

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findAttachmentList(JZ)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "kkahn/Mms/MmsSinglePageActivity"

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

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAttachmentListView(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private presentModel(Lcom/android/mms/model/SlideshowModel;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_0

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

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
    if-ge v7, v8, :cond_10

    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_1

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

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
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasTopText(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v3, :cond_8

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_7

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mTextModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentText(Lcom/android/mms/model/TextModel;I)V

    :cond_8
    if-eqz v2, :cond_a

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_9

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mImageModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, v2, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentImage(Lcom/android/mms/model/ImageModel;I)V

    :cond_a
    if-eqz v4, :cond_c

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_b

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mVideoModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, v4, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentVideo(Lcom/android/mms/model/VideoModel;I)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->hasTopText(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v9

    if-nez v9, :cond_e

    if-eqz v3, :cond_e

    sget-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v9, :cond_d

    const-string v9, "kkahn/Mms/MmsSinglePageActivity"

    const-string v10, "mTextModel"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0, v3, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentText(Lcom/android/mms/model/TextModel;I)V

    :cond_e
    if-eqz v1, :cond_f

    const/4 v9, 0x1

    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->clearArrayListsForSinglePage()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->addMmsInfoLayer()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentModel(Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentAttachmentList()V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/MmsSinglePageActivity$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$8;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/MmsSinglePageActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/android/mms/export/MmsPartExport;->savePart(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method private saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Landroid/net/Uri;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static setAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 0

    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method

.method public static setAudioModel(Lcom/android/mms/model/AudioModel;)V
    .locals 2

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "setAudioModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    return-void
.end method

.method public static setClickUri(Landroid/net/Uri;)V
    .locals 3

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

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
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticClickUri:Landroid/net/Uri;

    return-void
.end method

.method public static setImageModel(Lcom/android/mms/model/ImageModel;)V
    .locals 0

    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticImageModel:Lcom/android/mms/model/ImageModel;

    return-void
.end method

.method public static setSlideIndex(I)V
    .locals 3

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

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
    sput p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticSlideIndex:I

    return-void
.end method

.method private setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    iput-object p2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p4, p5, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedUrl= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setVideoModel(Lcom/android/mms/model/VideoModel;)V
    .locals 2

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "setVideoModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sput-object p0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    return-void
.end method

.method private startYellowPage(Ljava/lang/String;)V
    .locals 3

    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "startYellow"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.yellowpage"

    const-string v2, "com.sec.android.yellowpage.YellowPageMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "yellowpage_search_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private touchListener(IIIIJ)V
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    sub-int v1, p1, p2

    sub-int v2, p3, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-nez v3, :cond_3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, p5, v3

    if-ltz v3, :cond_0

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mBlockFlickUntilMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    :cond_0
    sput-boolean v7, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sput-boolean v7, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->isFromFolderView:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->navigateMsgFolderViewMode(Z)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_8
    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->moveSmsView(Z)V

    goto :goto_1
.end method

.method private updateActionBarTextSize()V
    .locals 9

    const/high16 v8, 0x3f800000

    const/4 v3, 0x1

    const/high16 v7, 0x40000000

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const/high16 v6, 0x41880000

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v6, 0x41400000

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3, v5, v4, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/high16 v6, 0x41600000

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v5

    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v6

    invoke-virtual {v3, v5, v4, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->bar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateFontsizeForTextAreaVolumeKey()V
    .locals 7

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    const v4, 0x7f0b0291

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshFontsizeForTextAreaVolumeKey: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateTitleIcon()V
    .locals 2

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "updateTitleIcon"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->createViewTitleHeader()V

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

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

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

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
    .locals 19

    sget-boolean v14, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v14, :cond_0

    const-string v14, "kkahn/Mms/MmsSinglePageActivity"

    const-string v15, "addAttachmentOneView"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v4, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    new-instance v5, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v14, 0x7f04001f

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v14, 0x7f0b0075

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v14, 0x7f0b0074

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v14, 0x7f0b0077

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    const v14, 0x7f0b0079

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    const/16 v14, 0x2e

    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-ltz v10, :cond_1

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-string v14, "dm"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".dcf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_2
    const-string v14, "cid:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "Cid:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_4
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "text/x-vCard"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "text/x-vcard"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_5
    const v14, 0x7f02013a

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v14, :cond_7

    const v14, 0x7f0b0291

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const/high16 v15, -0x10000

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->setAttachment(Lcom/android/mms/model/AttachmentModel;)V

    new-instance v14, Lcom/android/mms/ui/MmsSinglePageActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$20;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lcom/android/mms/ui/MmsSinglePageActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$21;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_9
    const-string v14, "text/x-vCalendar"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const v14, 0x7f020138

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_a
    const-string v14, "text/x-vNote"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const v14, 0x7f02013c

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_b
    const-string v14, "text/x-vtodo"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const v14, 0x7f02013e

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_c
    const v14, 0x7f020136

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V
    .locals 15
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

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v10, 0x7f04001f

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v11, 0x7f0b0075

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v11, 0x7f0b0074

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v10, 0x7f020131

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v11, 0x7f0b0077

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const v11, 0x7f0b0079

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/16 v10, 0x2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    add-int/lit8 v10, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v10, "dm"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".dcf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v10, "cid:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "Cid:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const/4 v10, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v10, :cond_4

    const v10, 0x7f0b0291

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const/high16 v11, -0x10000

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAudioInfoView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MmsSinglePageActivity;->setAudioModel(Lcom/android/mms/model/AudioModel;)V

    new-instance v10, Lcom/android/mms/ui/MmsSinglePageActivity$15;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$15;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/android/mms/ui/MmsSinglePageActivity$16;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$16;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addMmsDetailInfoToSlidePresenter()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0xc

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "kkahn/Mms/MmsSinglePageActivity"

    const-string v3, "addMmsDetailInfoToSlidePresenter"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4, v4, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    const v2, 0x7f0b0291

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public checkTextSelectorState()Z
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    const v4, 0x7f0b0291

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTextSelectorState: childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    if-lez v1, :cond_4

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    const-string v4, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit TextView, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isSelected() TRUE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent(),action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent(), bMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bMultiTouchFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-eq v0, v8, :cond_3

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    if-ne v0, v8, :cond_d

    :cond_3
    sput-boolean v9, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    move v0, v8

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    goto :goto_0

    :pswitch_2
    sput-boolean v8, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ACTION_POINTER_DOWN], bMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->initMotionEventForPinchZoom()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findFirstVisibleTextView()V

    goto :goto_0

    :pswitch_3
    sput-boolean v8, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouchFinished:Z

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_6

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ACTION_POINTER_UP], bMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->invokeRefreshTextArea()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endY:I

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_8

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ACTION_UP]startY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-eq v0, v8, :cond_a

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-nez v0, :cond_1

    :cond_a
    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startX:I

    iget v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endX:I

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->startY:I

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->endY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->touchListener(IIIIJ)V

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_b

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ACTION_MOVE],bMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->LogForMotionEvent(Landroid/view/MotionEvent;)V

    :cond_c
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    if-ne v0, v8, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->enqueueMotionEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->invokeResizeTextAreaOnlySelectedItem()V

    goto/16 :goto_0

    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

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

.method public findAttachmentList(JZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/export/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/Mms/MmsSinglePageActivity"

    const-string v1, "findAttachmentList > No Attachment"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->attachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 6

    const v5, 0x7f0c013b

    const/4 v4, 0x1

    const-string v2, ""

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0c0100

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0c0163

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "Unknown address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "Verizon Global Support"

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "mContactList is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "mRecipients is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "Mms/MmsSinglePageActivity"

    const-string v2, "mContactList is null!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideSipForDirectCall()V
    .locals 0

    return-void
.end method

.method public isAvailableDirectCall()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/mms/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;Z)V
    .locals 13

    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSeen:I

    if-ne v0, v7, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v0, v7, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_3

    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v10, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v3, 0x80

    new-instance v4, Lcom/android/mms/ui/MmsSinglePageActivity$24;

    invoke-direct {v4, p0, v10, v12, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$24;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v10, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v10, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_7
    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v3, 0x80

    new-instance v4, Lcom/android/mms/ui/MmsSinglePageActivity$25;

    invoke-direct {v4, p0, v10, v12, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$25;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v10, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_a

    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "read"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "seen"

    aput-object v1, v3, v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_c

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v7, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    :cond_b
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v7, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_seen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_c
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p2, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/MmsSinglePageActivity$26;

    invoke-direct {v5, p0, v2, v12, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$26;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOneForMmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_e
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_f
    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v7, 0x80

    new-instance v8, Lcom/android/mms/ui/MmsSinglePageActivity$27;

    invoke-direct {v8, p0, v2, v12, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$27;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    const/4 v0, 0x0

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    long-to-int v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_12
    if-eqz p2, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_seen:Z

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_seen:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_14
    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const/16 v7, 0x80

    new-instance v8, Lcom/android/mms/ui/MmsSinglePageActivity$28;

    invoke-direct {v8, p0, v2, v12, p1}, Lcom/android/mms/ui/MmsSinglePageActivity$28;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    const/4 v0, 0x0

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    long-to-int v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->update_read:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_17
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findCurrentScrollPos()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MmsSinglePageActivity$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$10;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "Mms/MmsSinglePageActivity"

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
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateActionBarTextSize()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mScrollHandler:Landroid/os/Handler;

    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->setContentView(I)V

    const v0, 0x7f0b0291

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mInsertedSimNum:I

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getMessageInformationFromIntent()V

    iget-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->isFromFolderView:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    const/4 v7, 0x2

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isValidSlideShow()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    const-string v6, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->inflateTitleHeader_Subject()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no of slides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->init()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->model:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mSlideShowModelLen:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->presentSlide_inOnePage(Lcom/android/mms/model/SlideshowModel;I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->scale1:F

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getMmsRecipients(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->createDirectCallingManager()V

    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$2;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {p0, v0, v10}, Lcom/android/mms/ui/MmsSinglePageActivity;->markAsRead(Ljava/lang/Runnable;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p0, v0, v1, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p0, v0, v1, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v8

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MessageOptions;->setConversation(Lcom/android/mms/data/Conversation;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mBlockFlickUntilMillis:J

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v1, "Cannot present the slide show."

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown(),keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lt v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-eq v3, v2, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->misTalkbackOn:Z

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->increaseFontSize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->misTalkbackOn:Z

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->decreaseFontSize(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateFontsizeForTextAreaVolumeKey()V

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsSinglePageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp(),keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->exitMmsSinglePageActivity()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/16 v5, 0x1d

    const/4 v1, 0x1

    const-string v2, "Mms/MmsSinglePageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v2, :cond_6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAddContactIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mAddContactIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "msgId"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->threadId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "fromMmsSinglePageActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_1

    const-string v2, "isSpam"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageOptions;->SpamOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->viewContactDetailORList()V

    :cond_4
    :goto_1
    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->exitMmsSinglePageActivity()V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRequestLockedMessageView:Z

    if-eqz v2, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    goto :goto_0

    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 8

    const/4 v7, 0x0

    const-string v5, "onPause()"

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    iput-boolean v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v5, p0}, Lcom/android/mms/util/DirectCallingManager;->pause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createSpamOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-nez v0, :cond_1

    const/16 v0, 0x64

    const v1, 0x7f0c03a7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200fc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    const/4 v9, 0x1

    const-string v6, "onResume()"

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v6, p0}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v1, :cond_2

    :try_start_1
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "Mms/MmsSinglePageActivity"

    const-string v7, "StackOverflowError caught @ MmsSinglePageActivity.onResume and return default objView"

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mCheckTextViewSelectable:Z

    invoke-static {p0}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->misTalkbackOn:Z

    const/16 v6, 0x12c

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->checkContactValidityWithDelay(I)V

    return-void

    :catch_2
    move-exception v2

    const-string v6, "Mms/MmsSinglePageActivity"

    const-string v7, "Unexpected ClassCastException."

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onStart()V
    .locals 1

    const-string v0, "onStart()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->isExitCase()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->drawTitle_Subject()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->updateTitleIcon()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->addRecipientsListener()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "onStop()"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->dumpLogs(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->removeRecipientsListener()V

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    new-instance v0, Lcom/android/mms/ui/MmsSinglePageActivity$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$30;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected presentAudioInfoOnly(Lcom/android/mms/model/AudioModel;Z)V
    .locals 3
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

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V

    return-void
.end method

.method protected presentImage(Lcom/android/mms/model/ImageModel;I)V
    .locals 2
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

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V

    return-void
.end method

.method protected presentText(Lcom/android/mms/model/TextModel;I)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0132

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0133

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3, p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method protected presentVideo(Lcom/android/mms/model/VideoModel;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->createVideoThumbnailForManualPlay(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ab

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V

    return-void
.end method

.method public setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V
    .locals 10

    sget-boolean v7, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v7, :cond_0

    const-string v7, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImageWithFrame/"

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
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v7, 0x7f040079

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x7f0b02b7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v7, 0x7f0b02b9

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    const v7, 0x7f0b02b8

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02009a

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v7, :cond_2

    const v7, 0x7f0b0291

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageActivity;->setSlideIndex(I)V

    invoke-static {p2}, Lcom/android/mms/ui/MmsSinglePageActivity;->setImageModel(Lcom/android/mms/model/ImageModel;)V

    new-instance v7, Lcom/android/mms/ui/MmsSinglePageActivity$11;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$11;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/mms/ui/MmsSinglePageActivity$12;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$12;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v1

    const-string v7, "Mms/MmsSinglePageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLockIcon(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsSinglePageActivity"

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

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_0

    const v3, 0x7f0b02c4

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_2

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition**SCROLL_MODE_TOP]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v6, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "Mms/MmsSinglePageActivity"

    const-string v4, "[setScrollPosition]mMainScrollView.scrollTo(0, 0)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    if-lez v3, :cond_6

    iput v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_4

    const v3, 0x7f0b0291

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    iget v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    iput v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    :cond_6
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_7

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScrollPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY_changed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",totalHeightY_changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->totalHeightY_changed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_8

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition**SCROLL_MODE_KEEP_LATEST_POS]mMainScrollView.getScrollY() (1)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    iget v4, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v3, v6, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_9

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition]mMainScrollView.scrollTo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->currentScrollY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScrollPosition]mMainScrollView.getScrollY() (2)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTextWithTextView(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x1

    sget-boolean v3, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setTextWithTextView(),slideIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ntext***start***\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ntext***end***\n,isAttachment="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    if-nez p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/util/UIUtils;->getAllLinkMask()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/mms/ui/FontSizeController;->getFontSize(I)F

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x40000000

    invoke-static {v3}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const-string v3, "#00AEEF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v3, 0xc

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v3, :cond_2

    const v3, -0xffff01

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, v2}, Lcom/android/mms/poi/PoiReflector;->extractPoiString(Landroid/app/Activity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    iget-boolean v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG:Z

    if-eqz v3, :cond_4

    const v3, 0x7f020064

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_4
    move-object v0, v1

    new-instance v3, Lcom/android/mms/ui/MmsSinglePageActivity$17;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/MmsSinglePageActivity$17;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_5

    const v3, 0x7f0b0291

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/mms/util/ScrollingArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_6
    return-void

    :cond_7
    const/high16 v3, 0x41a00000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0
.end method

.method public setTitleIcon()V
    .locals 7

    const/4 v6, 0x0

    const-string v2, "mms"

    iget-wide v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v0

    sget-boolean v2, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "Mms/MmsSinglePageActivity"

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
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const v3, 0x7f020296

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    const v3, 0x7f020295

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->adjustSubjectWidth()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
    .locals 10

    const/4 v9, 0x0

    sget-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z

    if-eqz v6, :cond_0

    const-string v6, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMCC_VOC_MULTI_SLIDE_IN_SINGLE_PAGE:setImage/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v6, 0x7f040079

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0b02b7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v6, 0x7f0b02b9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v6, 0x7f0b02b8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02009b

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {p0, v2, v6, v7}, Lcom/android/mms/ui/MmsSinglePageActivity;->preCalculateImageBoudns(Landroid/widget/ImageView;II)V

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_2

    const v6, 0x7f0b0291

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMainLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->setClickUri(Landroid/net/Uri;)V

    invoke-static {p3}, Lcom/android/mms/ui/MmsSinglePageActivity;->setSlideIndex(I)V

    invoke-static {p4}, Lcom/android/mms/ui/MmsSinglePageActivity;->setVideoModel(Lcom/android/mms/model/VideoModel;)V

    new-instance v6, Lcom/android/mms/ui/MmsSinglePageActivity$13;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$13;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/android/mms/ui/MmsSinglePageActivity$14;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MmsSinglePageActivity$14;-><init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    :try_start_1
    const-string v6, "Mms/MmsSinglePageActivity"

    const-string v7, "video thumbnail bitmap is null"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "Mms/MmsSinglePageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public viewContactDetailORList()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.contacts"

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v7, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x24080000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v5, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    sget-object v5, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsSinglePageActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v5, "Mms/MmsSinglePageActivity"

    const-string v6, "getPhonemuber address is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "Mms/MmsSinglePageActivity"

    const-string v6, "Activity not found do not anyting!!!!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "recipients"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "recipients"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 12

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

    sget-boolean v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mIsSpam:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    iget-object v6, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v8

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    if-eqz v4, :cond_0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v11

    :cond_1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/MmsSinglePageActivity;->msgId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    const-string v0, "Mms/MmsSinglePageActivity"

    const-string v3, "Failed view message details"

    invoke-static {v0, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
