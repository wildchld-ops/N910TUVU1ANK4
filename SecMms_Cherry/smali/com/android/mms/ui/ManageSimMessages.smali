.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$ModeCallback;,
        Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;,
        Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;,
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;,
        Lcom/android/mms/ui/ManageSimMessages$TabFactory;
    }
.end annotation


# static fields
.field private static final COMPLETE_COPY_TO_PHONE_MEMORY:I = 0x64

.field private static final COMPLETE_DELETE_FROM_SIM:I = 0x65

.field private static final ICC_ACTIVE_URI:Landroid/net/Uri;

.field private static final ICC_ACTIVE_URI2:Landroid/net/Uri;

.field private static final ICC_URI:Landroid/net/Uri;

.field private static final ICC_URI2:Landroid/net/Uri;

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field public static final LIST_MULTIMODE_COPY:I = 0x2

.field public static final LIST_MULTIMODE_DELETE:I = 0x1

.field private static final MENU_SELECT:I = 0x0

.field private static final OPTION_MENU_COPY:I = 0x3

.field private static final OPTION_MENU_DELETE:I = 0x2

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final SIM2:Ljava/lang/String; = "SIM2"

.field private static final SIM2_MESSAGES_QUERY_TOKEN:I = 0x61a9

.field public static final SIM_FULL_NOTIFICATION_ID:I = 0xea

.field private static final SIM_MESSAGES_QUERY_TOKEN:I = 0x61a8

.field private static final TAG:Ljava/lang/String; = "Mms/ManageSimMessages"

.field private static isDirectEnter:Z

.field private static isSim1Active:Z

.field private static isSim2Active:Z

.field private static isTabMenu:Z

.field private static mInsertedSimNum:I

.field private static mTabState:I


# instance fields
.field private CHECKBOX_FLOATING_DEFAULT_DURATION:I

.field private SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field mAudioManager:Landroid/media/AudioManager;

.field private mCheckedMsgIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCompleteHandler:Landroid/os/Handler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEmptyBackgroundImage:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mIsInEditMode:Z

.field private mIsLandscape:Z

.field private mIsLastItemOfSelectAll:Z

.field private mIsSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mIsUnselectAll:Z

.field private mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

.field public mListMode:I

.field private mListMultiMode:I

.field mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mRefreshSimListReceiver:Landroid/content/BroadcastReceiver;

.field private mSIMCount:Landroid/widget/TextView;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectedButton:Landroid/widget/Button;

.field private mSimList:Landroid/widget/ListView;

.field private mSimMultiActionMode:Landroid/view/ActionMode;

.field private mTabSpec1:Landroid/widget/TabHost$TabSpec;

.field private mTabSpec2:Landroid/widget/TabHost$TabSpec;

.field private mTabs:Landroid/widget/TabHost;

.field private onSimMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    const-string v0, "content://sms/icc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    const-string v0, "content://sms/icc/active"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_ACTIVE_URI:Landroid/net/Uri;

    const-string v0, "content://sms/icc2/active"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_ACTIVE_URI2:Landroid/net/Uri;

    sput v1, Lcom/android/mms/ui/ManageSimMessages;->mTabState:I

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->mInsertedSimNum:I

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isDirectEnter:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    iput-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;

    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsUnselectAll:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsSelectAll:Z

    iput v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMultiMode:I

    iput-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsSelectAllmode:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLastItemOfSelectAll:Z

    iput-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsInEditMode:Z

    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/mms/ui/ManageSimMessages;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$5;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$6;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mRefreshSimListReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$7;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$9;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->onSimMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ManageSimMessages;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->setEmptyBgImage(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;I)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ManageSimMessages;->setSIMMessageCountUI(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ManageSimMessages;ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # J

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ManageSimMessages;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ManageSimMessages;I)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    return v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->cancelSimFullNotification()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ManageSimMessages;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/ManageSimMessages;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/ManageSimMessages;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/ManageSimMessages;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->deleteSelectedMessage()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->copySelectedMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->addToContact()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->viewContact()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isDirectEnter:Z

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/ui/ManageSimMessages;->isDirectEnter:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->checkActiveMsg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->contactExistsInDatabase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/mms/ui/ManageSimMessages;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/mms/ui/ManageSimMessages;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsInEditMode:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/mms/ui/ManageSimMessages;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsInEditMode:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ManageSimMessages;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSimMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSimMessages;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ManageSimMessages;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method private addToContact()V
    .locals 4

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v3, "address"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private cancelSimFullNotification()V
    .locals 1

    const/16 v0, 0xea

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private checkActiveMsg()Z
    .locals 5

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    :cond_0
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ManageSimMessages;->isCheckedItem(J)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_3
    const-string v3, "active"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private closeCursor()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v1, "Mms/ManageSimMessages"

    const-string v2, "close Cursor"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SimMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method private confirmMultipleDeleteDialog(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;I)V
    .locals 8
    .param p1    # Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;
    .param p2    # I

    const v7, 0x7f0c0235

    const v6, 0x7f0c0234

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0076

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0182

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-le p2, v4, :cond_3

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/android/mms/ui/ManageSimMessages;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM"

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM"

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_4
    if-le p2, v4, :cond_5

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/android/mms/ui/ManageSimMessages;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private contactExistsInDatabase()Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    :cond_0
    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v5, v3

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ManageSimMessages;->isCheckedItem(J)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v5, "ADDRESS"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private copySelectedMessage()V
    .locals 10

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    const v0, 0x7f0c0236

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v0, v9

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->isCheckedItem(J)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$4;

    invoke-direct {v1, p0, v7}, Lcom/android/mms/ui/ManageSimMessages$4;-><init>(Lcom/android/mms/ui/ManageSimMessages;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v0, "address"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "body"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;-><init>(Lcom/android/mms/ui/ManageSimMessages;ILjava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private copyToPhoneMemory(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 10
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # J

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "copyToPhoneMemory"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    const-wide/16 p4, 0x1

    :try_start_0
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "copyToPhoneMemory, change date to 1"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableCheckIMSIForSimIcon()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x0

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v8, 0x1

    :cond_3
    const-string v0, "sim_slot"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, p2, p3, v1, v4}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    :cond_6
    :try_start_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x0

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string v0, "sim_imsi"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_4
    const-string v0, "Mms/ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyToPhoneMemory error:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v6}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    goto :goto_3

    :catch_1
    move-exception v6

    move-object v2, v9

    goto :goto_4
.end method

.method private deleteFromSim(I)I
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    const-string v2, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFromSim indexOnIcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFromSim simUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v0, v5, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/mms/ui/ManageSimMessages;->mInsertedSimNum:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    if-eqz v2, :cond_5

    const-string v2, "Mms/ManageSimMessages"

    const-string v3, "refreshMessageList - SIM 1 deactive"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private deleteSelectedMessage()V
    .locals 8

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [I

    const/4 v2, 0x0

    :cond_0
    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v6, v4

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/ManageSimMessages;->isCheckedItem(J)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    array-length v6, v0

    if-lez v6, :cond_1

    new-instance v6, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    invoke-direct {v6, p0, v0}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;-><init>(Lcom/android/mms/ui/ManageSimMessages;[I)V

    array-length v7, v0

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/ManageSimMessages;->confirmMultipleDeleteDialog(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;I)V

    :cond_1
    return-void

    :cond_2
    const-string v6, "index_on_icc"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v3, v2, 0x1

    aput v5, v0, v2

    move v2, v3

    goto :goto_0
.end method

.method private isCheckedItem(J)Z
    .locals 2
    .param p1    # J

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiSelectMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshMessageList()V
    .locals 2

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "refreshMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    return-void
.end method

.method private setEmptyBgImage(Z)V
    .locals 3
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->isEmptyViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v2, 0x7f0202a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private setListMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->invalidateOptionsMenu()V

    return-void
.end method

.method private setSIMMessageCountUI(Landroid/database/Cursor;I)V
    .locals 16
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez p2, :cond_f

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    invoke-static {v12}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    const-string v12, "Mms/ManageSimMessages"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "currentPhoneType "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v12, 0x1

    if-ne v3, v12, :cond_5

    const-string v12, "active"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_1

    const-string v12, "max_slot_count"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isDualCardInserted()Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x1

    if-ne v3, v12, :cond_8

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[SIM] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0272

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    if-nez v6, :cond_1

    const-string v12, "max_slot_count"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    goto :goto_1

    :cond_5
    const-string v12, "active"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-nez v6, :cond_1

    const-string v12, "max_slot_count"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_1

    const-string v12, "max_slot_count"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[SIM] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0428

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[UIM] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0272

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[UIM] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0428

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    invoke-static/range {p2 .. p2}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "%d/%d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[UIM] CDMA:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0428

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    const-string v12, "%d/%d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[UIM] GSM:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0428

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    if-nez v5, :cond_d

    const v12, 0x7f0c0272

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    if-nez v2, :cond_e

    const v12, 0x7f0c0272

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[UIM] CDMA:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", GSM:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    const-string v12, "%d/%d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_e
    const-string v12, "%d/%d "

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[UIM] CDMA:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", GSM:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0428

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_f
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const-string v12, "max_slot_count"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[SIM] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0272

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[SIM] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0c0428

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private showProgressDialog(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "show progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startQuery()V
    .locals 9

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "now is searching"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x61a8

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isDualCardInserted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMultiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x61a8

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_ACTIVE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const v0, 0x7f0c0009

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v0, "Mms/ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x61a8

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private startQuery2()V
    .locals 9

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "now is searching"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x61a9

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isDualCardInserted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMultiMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x61a9

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_ACTIVE_URI2:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const v0, 0x7f0c0009

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v0, "Mms/ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x61a9

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateState()V
    .locals 4

    const-string v1, "Mms/ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTabMenu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTabState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/ManageSimMessages;->mTabState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/mms/ui/ManageSimMessages;->mTabState:I

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$TabFactory;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/ui/ManageSimMessages$TabFactory;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const/4 v1, 0x1

    sput v1, Lcom/android/mms/ui/ManageSimMessages;->mTabState:I

    :cond_0
    return-void
.end method

.method private viewContact()V
    .locals 6

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    const-string v4, "address"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public hideProgressDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "hide progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setEmptyBgImage(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSimMessages$ModeCallback;->updateSelectionButtonHeight()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSimMessages$ModeCallback;->updateTitleTextSize()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    sput v2, Lcom/android/mms/ui/ManageSimMessages;->mTabState:I

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    const-string v0, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertedSimCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/ui/ManageSimMessages;->mInsertedSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim 1 state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim 2 state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/mms/ui/ManageSimMessages;->mInsertedSimNum:I

    if-le v0, v1, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    :goto_0
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v0, :cond_3

    sput v2, Lcom/android/mms/ui/ManageSimMessages;->mTabState:I

    const v0, 0x7f0400a6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setContentView(I)V

    const v0, 0x7f0b037f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    const-string v3, "SIM1"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0, v2, v6, v2}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    const-string v3, "SIM2"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0, v1, v6, v2}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    new-instance v3, Lcom/android/mms/ui/ManageSimMessages$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    const-string v3, "SIM1"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v3, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    new-instance v0, Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-direct {v0, p0, v7, v2}, Lcom/android/mms/ui/SimMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->onSimMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b0199

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    invoke-direct {v0, p0, v7}, Lcom/android/mms/ui/ManageSimMessages$ModeCallback;-><init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSIMMessageCountUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0376

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;

    :cond_0
    const v0, 0x7f0b0159

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setEmptyBgImage(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAll:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string v0, ""

    const-string v2, ""

    invoke-static {p0, v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->cancelSimFullNotification()V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->setListMode()V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->updateState()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mRefreshSimListReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REFRESH_SIM_LIST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    sput-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f0400a4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setContentView(I)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->closeCursor()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mRefreshSimListReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMultiMode:I

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isDirectEnter:Z

    goto :goto_0

    :sswitch_1
    iput v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMultiMode:I

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isDualCardInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isDirectEnter:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f0c048f

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    sget-boolean v3, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/android/mms/ui/ManageSimMessages;->mInsertedSimNum:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p0, v2, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->hideProgressDialog()V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->closeCursor()V

    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 1
    .param p1    # Lcom/android/mms/data/Contact;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$8;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsLastItemOfSelectAll:Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mModeCallback:Lcom/android/mms/ui/ManageSimMessages$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSimMessages$ModeCallback;->updateSelectionMenu()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void
.end method
