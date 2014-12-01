.class public Lcom/android/mms/ui/ReservationMessageManager;
.super Landroid/app/Activity;
.source "ReservationMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;,
        Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;,
        Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;,
        Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field public static final LIST_MULTIMODE_CANCEL:I = 0x1

.field public static final LIST_MULTIMODE_DELETE:I = 0x2

.field public static final MENU_DELETE_ALL:I = 0xc8

.field public static final MENU_DELETE_CANCEL:I = 0xd3

.field public static final MENU_DELETE_OK:I = 0xd2

.field public static final MENU_SELECT:I = 0xc9

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationMessageManager"

.field public static badge:Landroid/widget/QuickContactBadge;

.field public static isVoLTEEnabled:Z


# instance fields
.field private mActionbarTitle:Landroid/widget/TextView;

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

.field private final mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteActionMode:Landroid/view/ActionMode;

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewBackground:Landroid/widget/ImageView;

.field private mFirstItemId:J

.field private mIsAnimationEnable:Z

.field private mIsDeleteMsgAnimating:Z

.field private mIsLandscape:Z

.field private mIsLastItemOfSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mListMultiMode:I

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMessageCount:I

.field mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

.field private mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

.field public mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

.field private mSelectedButton:Landroid/widget/Button;

.field private mSelectedPosition:I

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSendSimSlot:I

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private sessionID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ReservationMessageManager;->isVoLTEEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ReservationMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsDeleteMsgAnimating:Z

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z

    iput v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendSimSlot:I

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->sessionID:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    iput v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListMultiMode:I

    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsSelectAllmode:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLastItemOfSelectAll:Z

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    iput v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMessageCount:I

    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$7;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$8;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/ReservationMessageManager$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ReservationMessageManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ReservationMessageManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ReservationMessageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ReservationMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ReservationMessageManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ReservationMessageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->openThread(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ReservationMessageManager;I)Lcom/android/mms/data/Conversation;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/ReservationMessageManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ReservationMessageManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/mms/ui/ReservationMessageManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ReservationMessageManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendSimSlot:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/mms/ui/ReservationMessageManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendSimSlot:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->sessionID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/mms/ui/ReservationMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/mms/ui/ReservationMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/mms/ui/ReservationMessageManager;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->cancelSelectedMessages()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->confirmSendDialog(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgListSelectionAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ReservationMessageManager;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->disableAllMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ReservationMessageManager;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->updateMultiActionMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getMessagItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ReservationMessageManager;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->enableSelecteMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ReservationMessageManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ReservationMessageManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ReservationMessageManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ReservationMessageManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMessageCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQuery()V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->hideEmptyView()V

    return-void
.end method

.method private cancelSelectedMessages()V
    .locals 21

    const-string v18, "Mms/ReservationMessageManager"

    const-string v19, "deleteSelectedMessages()"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/16 v11, 0x15

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-string v17, "sms"

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/16 v11, 0x15

    :try_start_0
    const-string v18, "transport_type"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v18, "locked"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    const/4 v9, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    new-instance v18, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;Z)V

    const/16 v19, 0x0

    const v20, 0x7f0c033b

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v20

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/mms/ui/ReservationMessageManager;->confirmCancelMessageDialog(Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-void

    :catch_0
    move-exception v8

    const-string v18, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private closeCursor()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "close Cursor"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public static confirmCancelMessageDialog(Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f040048

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v4, 0x7f0c033c

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c012f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f0c033b

    goto :goto_0
.end method

.method private confirmSendDialog(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02ed

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004d

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowConfirmDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method private deleteMessage(Landroid/net/Uri;Z)V
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private disableAllMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0b03e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ef

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ec

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03f0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private enableSelecteMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->disableAllMenu(Landroid/view/Menu;)V

    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListMultiMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0b03e4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b03d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Landroid/database/Cursor;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v6, v1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getConversation(J)Lcom/android/mms/data/Conversation;
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$4;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getMessagItem()Lcom/android/mms/ui/MessageItem;
    .locals 15

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-wide/16 v11, 0x0

    const-string v2, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    const/4 v14, 0x0

    const/4 v13, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v10, 0x0

    const/4 v9, 0x1

    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_0
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1, v11, v12, v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v14, v3

    :cond_1
    :goto_1
    if-nez v14, :cond_3

    move-object v1, v0

    move-object v0, v13

    :goto_2
    return-object v1

    :catch_0
    move-exception v8

    const-string v1, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v14}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    if-eqz v3, :cond_4

    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V

    :goto_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    const-string v1, "Mms/ReservationMessageManager"

    const-string v5, "MessageItem cursor is null"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move-object v0, v13

    goto :goto_3

    :catch_1
    move-exception v8

    const-string v1, "Mms/ReservationMessageManager"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 3

    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "initEmptyView"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "initEmptyView inflate empty view"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyViewBackground(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEtc()V
    .locals 2

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-static {p0}, Lcom/android/mms/util/SmartClipUtils;->setConversationListTag(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$3;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initListAdapter()V
    .locals 3

    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/ui/ReservationMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f04003e

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 3

    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$2;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    new-instance v0, Lcom/android/mms/animation/MsgListSelectionAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/animation/MsgListSelectionAnimation;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b014a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/ReservationMessageManager$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ReservationMessageManager$1;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

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

.method private isFirstItemChanged()Z
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMultiSelectMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openThread(I)V
    .locals 8

    const-string v5, "Mms/ReservationMessageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openThread startActivity for position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v5}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(ILandroid/content/Context;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v5, "Mms/ReservationMessageManager"

    const-string v6, "openThread can\'t find messageItem"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ReservationMessageManager;->getConversation(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "Mms/ReservationMessageManager"

    const-string v6, "openThread can\'t find conversation"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "highlight"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "message_type"

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "select_id"

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "FromSearchActivity"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->startActivity(Landroid/content/Intent;)V

    const-string v5, "Mms/ReservationMessageManager"

    const-string v6, "openThread startActivity"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$5;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ReservationMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    return v1
.end method

.method private restoreListOffset()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4

    const v1, 0x7f0c0272

    const v2, 0x7f0d0001

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Mms/ReservationMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$6;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11

    :try_start_0
    const-string v9, "normalized_date DESC"

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "integrated-complete-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1"

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " LIMIT "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "complete-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->beforeQuery()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateEmptyScreen(IZ)V
    .locals 5

    const/4 v2, 0x0

    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmptyScreen(),resultCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMessageCount:I

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMessageCount:I

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initEmptyView()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->updateActionBarTitle()V

    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMessageCount:I

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->updateSelectionMenu()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->hideEmptyView()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateEmptyViewBackground(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isEmptyViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private updateMultiActionMenu(Landroid/view/Menu;)V
    .locals 13

    const v12, 0x7f0b03e3

    const v11, 0x7f0b03e8

    const v10, 0x7f0b03e7

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getMessagItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v12}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    const v5, 0x7f0b03e4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b03e4

    invoke-static {v5, p1, v6}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const v5, 0x7f0b03ef

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_5

    const v5, 0x7f0b03e6

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b03e6

    invoke-static {v5, p1, v6}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    :cond_5
    iget-boolean v5, v2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v5, :cond_7

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v11}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v9, :cond_6

    const v5, 0x7f0b03ec

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b03ec

    invoke-static {v5, p1, v6}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    :cond_6
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_8

    const v5, 0x7f0b03f0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v10}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    if-eqz v4, :cond_0

    const v5, 0x7f0b03f0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Mms/ReservationMessageManager"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method getMessageItem(ILandroid/content/Context;)Lcom/android/mms/ui/MessageItem;
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v1, v10, Landroid/database/Cursor;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v3, v10

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ReservationMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    const/4 v11, 0x0

    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "Mms/ReservationMessageManager"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    goto :goto_0
.end method

.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ReservationMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    const/4 v10, 0x0

    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "Mms/ReservationMessageManager"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    goto :goto_0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const-string v5, "Mms/ReservationMessageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumber(),position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListIndex(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5

    const/4 v3, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/ReservationMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyViewBackground(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->updateSelectionButtonHeight()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->updateTitleTextSize()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f040040

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->setContentView(I)V

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initResourceRefs()V

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initListAdapter()V

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initListAnimation()V

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initEtc()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->registerMultiWindowBroadcastReciver()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->closeCursor()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQuery()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListMultiMode:I

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListMultiMode:I

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xc9

    const/4 v2, 0x0

    const v3, 0x7f0c048f

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->setAnimationEnable(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "Mms/ReservationMessageManager"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->saveListOffset()V

    iget-boolean v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->refreshFontSize()V

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startFakeAsyncQuery()V

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->closeCursor()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMessageCount:I

    goto :goto_0
.end method

.method public onSweepActionCanceled(I)V
    .locals 3

    const-string v0, "Mms/ReservationMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired(),itemIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flickDirection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v5, p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->openThread(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3

    const-string v0, "Mms/ReservationMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->clearCheckedList()V

    iput-boolean v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLastItemOfSelectAll:Z

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setAnimationEnable(Z)V

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->clearCheckedList()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->updateSelectionMenu()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method

.method public updateActionBarTitle()V
    .locals 7

    const v3, 0x7f0c02e6

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method
