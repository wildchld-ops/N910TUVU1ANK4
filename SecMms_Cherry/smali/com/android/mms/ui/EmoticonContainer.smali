.class public Lcom/android/mms/ui/EmoticonContainer;
.super Landroid/widget/LinearLayout;
.source "EmoticonContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;,
        Lcom/android/mms/ui/EmoticonContainer$StickerInfo;,
        Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;,
        Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;,
        Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;
    }
.end annotation


# static fields
.field private static final DEFAULT_CATEGORY:I = 0x1

.field public static final EMOTICON_TAB_SELECTED:[I

.field private static final QUERY_PANEL:I = 0x2

.field private static final QUERY_STICKER:I = 0x1

.field private static final STICKER_DEFAULT_CATEGORY:I = 0x1

.field private static final STICKER_ID_FOR_FAVORITE:Ljava/lang/String; = "-1"

.field private static final TAG:Ljava/lang/String;

.field public static mEmoticonCategory:I


# instance fields
.field private downloadHandler:Landroid/os/Handler;

.field private mAniconResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

.field private mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mBound:Z

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field public mContainerView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCurrentStickerId:Ljava/lang/String;

.field private mDeleteHandler:Landroid/os/Handler;

.field private mDeleteRunnable:Ljava/lang/Runnable;

.field private mDeleteTab:Landroid/widget/ImageView;

.field private mDestoryed:Z

.field public mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

.field private mEmoticonToggleButton:Landroid/widget/Button;

.field private mEmoticonToggleButtonDialog:Landroid/widget/Button;

.field private mEmoticonsNoRecent:Landroid/widget/TextView;

.field private mEmoticonsPager:Landroid/support/v4/view/ViewPager;

.field public mEmoticonsView:Landroid/widget/FrameLayout;

.field private mEnaleShopAgent:Z

.field private mFocusedEdit:Landroid/widget/EditText;

.field private mInitConatainer:Z

.field private mOnEmoticonSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPagerViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;",
            ">;"
        }
    .end annotation
.end field

.field public mPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;

.field private mPanelImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelImageMapDialog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelLayout:Landroid/view/ViewGroup;

.field private mPanelLayoutDialog:Landroid/view/ViewGroup;

.field private mPanelResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

.field public mSelectContainerView:Landroid/widget/FrameLayout;

.field private mService:Landroid/os/Messenger;

.field private mStartMethod:Z

.field private mStickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

.field private mStickerGridView:Landroid/widget/GridView;

.field private mStickerInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/EmoticonContainer$StickerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/EmoticonContainer$StickerInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStickerListObserver:Landroid/database/ContentObserver;

.field private mStickerPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;

.field public mStickerPanel:Landroid/widget/RelativeLayout;

.field private mStickerToggleButton:Landroid/widget/Button;

.field public mStickersView:Landroid/widget/FrameLayout;

.field private mStickersViewPager:Landroid/support/v4/view/ViewPager;

.field private mStickersViewPagerDialog:Landroid/support/v4/view/ViewPager;

.field private mToggleButtonClickListener:Landroid/view/View$OnClickListener;

.field private mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mViewStickerPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private onCancelButtonClick:Landroid/view/View$OnClickListener;

.field private onDownloadButtonClick:Landroid/view/View$OnClickListener;

.field public onEmoticonDeleteClickListener:Landroid/view/View$OnClickListener;

.field public onEmoticonDeleteTouchListener:Landroid/view/View$OnTouchListener;

.field private stickerPanelClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/mms/ui/EmoticonContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonCategory:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/EmoticonContainer;->EMOTICON_TAB_SELECTED:[I

    return-void

    :array_0
    .array-data 4
        0x7f020255
        0x7f02025c
        0x7f02024a
        0x7f02024e
        0x7f020246
        0x7f020260
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mBound:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStartMethod:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mInitConatainer:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mDestoryed:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/EmoticonContainer$1;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerListObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$5;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onEmoticonDeleteClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$6;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onEmoticonDeleteTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$7;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onDownloadButtonClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$8;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onCancelButtonClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$9;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->stickerPanelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$10;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->downloadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$11;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$12;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mViewStickerPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$13;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mToggleButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$14;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mOnEmoticonSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.orca.shopagent"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mBound:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStartMethod:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mInitConatainer:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mDestoryed:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/EmoticonContainer$1;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerListObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$5;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onEmoticonDeleteClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$6;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onEmoticonDeleteTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$7;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onDownloadButtonClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$8;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onCancelButtonClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$9;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->stickerPanelClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$10;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->downloadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$11;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$12;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mViewStickerPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$13;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mToggleButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$14;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mOnEmoticonSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.orca.shopagent"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/EmoticonContainer;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/EmoticonContainer;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mDeleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/EmoticonContainer;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mDeleteHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/EmoticonContainer;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mDeleteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mDeleteRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/EmoticonContainer;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-boolean v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStartMethod:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/EmoticonContainer;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStartMethod:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mOnEmoticonSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonContainer;->requestDownload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonContainer;->requestCancelDownload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonContainer;->changePanel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/EmoticonContainer;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/EmoticonContainer;->onQueryCompleted(ILjava/lang/Object;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMapDialog:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/EmoticonContainer;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mCurrentStickerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/EmoticonContainer;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/EmoticonContainer;->setDownloadVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsNoRecent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/EmoticonContainer;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onCancelButtonClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/EmoticonContainer;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onDownloadButtonClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/Conversation;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/mms/ui/EmoticonContainer;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Lcom/android/mms/data/Conversation;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/mms/ui/EmoticonContainer;Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage;
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Lcom/android/mms/data/WorkingMessage;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/EmoticonContainer;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-boolean v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mDeleteTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/EmoticonContainer;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;
    .param p1    # Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mDeleteTab:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/EmoticonContainer;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0    # Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private changePanel(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mCurrentStickerId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMapDialog:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/mms/ui/EmoticonContainer;->mCurrentStickerId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMapDialog:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    if-eqz v2, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    const/4 v1, -0x1

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;

    if-eqz v3, :cond_4

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->itemPosition:I
    invoke-static {v3}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$2400(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)I

    move-result v1

    :cond_4
    const/4 v4, -0x1

    if-le v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPagerDialog:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer;->mCurrentStickerId:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/mms/ui/EmoticonContainer;->mCurrentStickerId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2
.end method

.method private createAniconDispatcherExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$3;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private createPanelDispatcherExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$4;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private createPanelImage(Ljava/lang/String;J)Landroid/widget/ImageView;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # J

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f0400b7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b03a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0b03a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v4, "-1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f020265

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gtz v4, :cond_1

    const-string v4, "-1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->stickerPanelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMap:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private createPanelImageDialog(Ljava/lang/String;J)Landroid/widget/ImageView;
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # J

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f0400b7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b03a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0b03a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v4, "-1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f020265

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gtz v4, :cond_1

    const-string v4, "-1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->stickerPanelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelLayoutDialog:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMapDialog:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private onQueryCompleted(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 22
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mDestoryed:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;

    if-eqz v19, :cond_0

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->gridView:Landroid/widget/GridView;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$400(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/GridView;

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$500(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->gridView:Landroid/widget/GridView;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$400(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/GridView;

    move-result-object v5

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$500(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$500(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$500(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const-string v5, "-1"

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mCurrentStickerId:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mPanelLayoutDialog:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMapDialog:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    const-string v5, "-1"

    const-wide/16 v20, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v5, v1, v2}, Lcom/android/mms/ui/EmoticonContainer;->createPanelImageDialog(Ljava/lang/String;J)Landroid/widget/ImageView;

    :goto_1
    new-instance v3, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;

    add-int/lit8 v11, v4, 0x1

    const-string v5, "-1"

    const-wide/16 v6, 0x64

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;-><init>(ILjava/lang/String;JZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoMap:Ljava/util/Map;

    const-string v20, "-1"

    move-object/from16 v0, v20

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_9

    sget-object v5, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Sticker panel Cursor count : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v3

    move v6, v11

    :goto_2
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "item_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v5, "install"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v5, "local_version"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v5, "latest_version"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v10, 0x0

    if-le v12, v13, :cond_3

    const/4 v10, 0x1

    :cond_3
    new-instance v3, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v4, v6, 0x1

    move-object v5, v3

    :try_start_1
    invoke-direct/range {v5 .. v10}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;-><init>(ILjava/lang/String;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoMap:Ljava/util/Map;

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/android/mms/ui/EmoticonContainer;->createPanelImageDialog(Ljava/lang/String;J)Landroid/widget/ImageView;

    move-result-object v15

    new-instance v18, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v7}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mPanelResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    move-object/from16 v0, v18

    invoke-virtual {v5, v15, v0}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->dispatch(Landroid/view/View;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move-object/from16 v16, v3

    move v6, v4

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mPanelLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    const-string v5, "-1"

    const-wide/16 v20, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v5, v1, v2}, Lcom/android/mms/ui/EmoticonContainer;->createPanelImage(Ljava/lang/String;J)Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/android/mms/ui/EmoticonContainer;->createPanelImage(Ljava/lang/String;J)Landroid/widget/ImageView;

    move-result-object v14

    new-instance v17, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v7}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mPanelResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    move-object/from16 v0, v17

    invoke-virtual {v5, v14, v0}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->dispatch(Landroid/view/View;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz p3, :cond_6

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    :cond_7
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object/from16 v3, v16

    move v4, v6

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mStickerPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->stickerId:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$600(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/mms/ui/EmoticonContainer;->changePanel(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    move-object/from16 v3, v16

    move v4, v6

    goto :goto_4

    :catchall_2
    move-exception v5

    move-object/from16 v3, v16

    goto :goto_4

    :cond_8
    move-object/from16 v3, v16

    move v4, v6

    goto :goto_5

    :cond_9
    move v4, v11

    goto :goto_5
.end method

.method private requestCancelDownload(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/StickerDownloadManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/ui/StickerDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->downloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/ui/StickerDownloadManager;->cancelDownloadStickerPackage(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private requestDownload(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/EmoticonContainer;->setDownloadVisibility(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;

    # setter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->isDownloading:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$2002(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;Z)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/StickerDownloadManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/ui/StickerDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->downloadHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2}, Lcom/android/mms/ui/StickerDownloadManager;->downloadStickerPackage(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private setDownloadVisibility(Ljava/lang/String;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_5

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->downloadLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2600(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->downloadLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2600(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2700(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2700(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->cancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2800(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->cancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2800(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2900(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2900(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_3
    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$3000(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$3000(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0568

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->downloadLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2600(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->downloadLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2600(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2700(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2700(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public asyncSendSticker(Lcom/android/mms/data/Conversation;Landroid/view/View;)V
    .locals 3
    .param p1    # Lcom/android/mms/data/Conversation;
    .param p2    # Landroid/view/View;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/EmoticonContainer$15;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/mms/ui/EmoticonContainer$15;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/view/View;Lcom/android/mms/data/Conversation;)V

    const-string v2, "send_chat"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public continousDelete()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mDeleteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mDeleteRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getContainerView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getEmoticonTabManager()Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->onEmoticonDeleteClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonContainer;->onEmoticonDeleteTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    goto :goto_0
.end method

.method public getInitContainer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mInitConatainer:Z

    return v0
.end method

.method public inflateDownloadView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f0400b6

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b03a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0b01d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;

    new-instance v5, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;

    invoke-direct {v5, p0, p1, v0, v2}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;-><init>(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/EmoticonContainer;->setDownloadVisibility(Ljava/lang/String;Z)V

    return-object v3
.end method

.method public inflateGridView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 13
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v0, 0x7f040061

    invoke-virtual {v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v0, 0x7f0b01cf

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/EmoticonContainer;->mAniconResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/android/mms/freemessage/FreeMessageStickerAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/sec/orca/shop/client/library/ResourceDispatcher;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mOnEmoticonSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v3, 0x0

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildRecentStickerUri()Landroid/net/Uri;

    move-result-object v3

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    invoke-direct {v10, p0, p1, v0, v1}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;-><init>(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;Landroid/widget/GridView;Lcom/android/mms/freemessage/FreeMessageStickerAdapter;)V

    if-eqz p2, :cond_0

    const v0, 0x7f0b01cd

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b01ce

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->onDownloadButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0b01d0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->setProgressLayout(Landroid/view/View;)V

    const v0, 0x7f0b01cc

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->setDownloadLayout(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;

    invoke-interface {v0, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12

    :cond_1
    invoke-static {p1}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerUriByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public initDialogContainer()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPagerDialog:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x2

    invoke-static {}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerPackageListUri()Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMapDialog:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPagerDialog:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPagerDialog:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mViewStickerPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPagerDialog:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPagerDialog:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonToggleButtonDialog:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonToggleButtonDialog:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonToggleButtonDialog:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mToggleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelLayoutDialog:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public initEmoticonContainer()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsNoRecent:Landroid/widget/TextView;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v3, v3}, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    sput v2, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonCategory:I

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public initStickerContainer()V
    .locals 11

    const/4 v1, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonContainer;->createAniconDispatcherExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAniconResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    new-instance v0, Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonContainer;->createPanelDispatcherExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;-><init>(Lcom/android/mms/ui/EmoticonContainer;Lcom/android/mms/ui/EmoticonContainer$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;

    new-instance v0, Lcom/android/mms/ui/EmoticonContainer$2;

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/EmoticonContainer$2;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerPackageListUri()Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersView:Landroid/widget/FrameLayout;

    const v2, 0x7f0b0190

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mViewStickerPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersView:Landroid/widget/FrameLayout;

    const v2, 0x7f0b018d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonToggleButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonToggleButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonToggleButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mToggleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    const v2, 0x7f0b0181

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerToggleButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerToggleButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerToggleButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mToggleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersView:Landroid/widget/FrameLayout;

    const v2, 0x7f0b018e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelLayout:Landroid/view/ViewGroup;

    iput-boolean v10, p0, Lcom/android/mms/ui/EmoticonContainer;->mInitConatainer:Z

    sget-object v0, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShopConstants.buildStickerPackageListUri()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerPackageListUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerPackageListUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public initialize()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04004f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    const v1, 0x7f04003a

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isStickerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0400b4

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/mms/ui/EmoticonContainer;->initStickerContainer()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/EmoticonContainer;->initEmoticonContainer()V

    iget-boolean v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isStickerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mSelectContainerView:Landroid/widget/FrameLayout;

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mSelectContainerView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mSelectContainerView:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method protected insertSticker(Landroid/view/View;)V
    .locals 29
    .param p1    # Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;->stickerId:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v21, Ljava/io/File;

    const-string v26, "stickers"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-nez v26, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-static/range {v23 .. v23}, Lcom/sec/orca/shop/client/library/ShopConstants;->buildStickerFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".png"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v19, 0x0

    const/4 v15, 0x0

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v7, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/io/FileInputStream;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    move-object/from16 v0, v19

    check-cast v0, Ljava/io/FileInputStream;

    move-object v14, v0

    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v26, 0x1f40

    :try_start_1
    move/from16 v0, v26

    new-array v4, v0, [B

    :goto_0
    invoke-virtual {v14, v4}, Ljava/io/InputStream;->read([B)I

    move-result v22

    const/16 v26, -0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v8

    move-object/from16 v15, v16

    :goto_1
    :try_start_2
    sget-object v26, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    const-string v27, "IOException caught while opening or reading stream"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_2

    if-eqz v15, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    new-instance v26, Ljava/io/IOException;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v9

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    if-eqz v15, :cond_3

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    :cond_3
    :goto_2
    if-eqz v19, :cond_4

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :cond_4
    :goto_3
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    new-instance v10, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v26, "selectedItems"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v26, "selectedCount"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    move-object/from16 v27, v0

    const/16 v27, 0x38

    const/16 v28, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/HandleComposerAttachment;->processingActivityResult(IILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/ui/ComposeMessageFragment;->hideEmoticonPanel()V

    return-void

    :cond_5
    move-object/from16 v15, v16

    :cond_6
    :try_start_7
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v15, :cond_7

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :cond_7
    :goto_4
    if-eqz v19, :cond_4

    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_3

    :catch_2
    move-exception v18

    sget-object v26, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    const-string v27, "Couldn\'t close fileoutputstream"

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_3
    move-exception v18

    sget-object v26, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    const-string v27, "Couldn\'t close fileoutputstream"

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v18

    sget-object v26, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    const-string v27, "Couldn\'t close fileoutputstream"

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_5
    move-exception v18

    sget-object v26, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    const-string v27, "Couldn\'t close fileoutputstream"

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v26

    :goto_5
    if-eqz v15, :cond_8

    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    :cond_8
    :goto_6
    if-eqz v19, :cond_9

    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    :cond_9
    :goto_7
    throw v26

    :catch_6
    move-exception v18

    sget-object v27, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    const-string v28, "Couldn\'t close fileoutputstream"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_7
    move-exception v18

    sget-object v27, Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;

    const-string v28, "Couldn\'t close fileoutputstream"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_8
    move-exception v26

    goto :goto_4

    :catch_9
    move-exception v26

    goto/16 :goto_3

    :catch_a
    move-exception v26

    goto/16 :goto_2

    :catch_b
    move-exception v26

    goto/16 :goto_3

    :catch_c
    move-exception v27

    goto :goto_6

    :catch_d
    move-exception v27

    goto :goto_7

    :catchall_1
    move-exception v26

    move-object/from16 v15, v16

    goto :goto_5

    :catch_e
    move-exception v8

    goto/16 :goto_1
.end method

.method public onDestroyEmoticonContainerView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_0
    iput-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_1
    iput-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAniconResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAniconResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-virtual {v0}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->shutdown()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mPanelResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-virtual {v0}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->shutdown()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    iput-boolean v3, p0, Lcom/android/mms/ui/EmoticonContainer;->mDestoryed:Z

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/StickerDownloadManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/ui/StickerDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/StickerDownloadManager;->unbindService()V

    iput-boolean v2, p0, Lcom/android/mms/ui/EmoticonContainer;->mInitConatainer:Z

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setStickerMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerListObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickerListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    return-void
.end method

.method public setToggleTab(Z)V
    .locals 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isStickerEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEnaleShopAgent:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mStickersView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mSelectContainerView:Landroid/widget/FrameLayout;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mSelectContainerView:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer;->mSelectContainerView:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer;->mSelectContainerView:Landroid/widget/FrameLayout;

    goto :goto_0
.end method
