.class public Lcom/android/mms/ui/LockedMessageManager;
.super Landroid/app/Activity;
.source "LockedMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/LockedMessageManager$ModeCallback;,
        Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final FLAG_UNLOCK_COMPLETE:I = 0xcb

.field public static final FLAG_UNLOCK_START:I = 0xca

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field public static final LIST_MULTIMODE_DELETE:I = 0x1

.field public static final MENU_CONNECT_URL:I = 0xd5

.field private static final MENU_DELETE_ALL:I = 0xc9

.field private static final MENU_SELECT:I = 0xc8

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/LockedMsgStoreActivity"

.field public static final UNLOCK_MESSAGE_TOKEN:I = 0x70a

.field public static badge:Landroid/widget/QuickContactBadge;


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

.field private final mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteActionMode:Landroid/view/ActionMode;

.field private mDeleteComplete:Z

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

.field mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

.field private mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

.field private mSelectedButton:Landroid/widget/Button;

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mUnlockComplete:Z

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/LockedMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    iput-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    iput-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsDeleteMsgAnimating:Z

    iput-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    iput v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsSelectAllmode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLastItemOfSelectAll:Z

    iput-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteComplete:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mUnlockComplete:Z

    iput v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMessageCount:I

    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$8;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$9;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/LockedMessageManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/LockedMessageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/LockedMessageManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteComplete:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/LockedMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteComplete:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mUnlockComplete:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/LockedMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mUnlockComplete:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/LockedMessageManager;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/LockedMessageManager;I)Lcom/android/mms/data/Conversation;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/LockedMessageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->openThread(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/LockedMessageManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/LockedMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/LockedMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/LockedMessageManager;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->unlockSelectedMessages()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgListSelectionAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->disableAllMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->updateMultiActionMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getMessagItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->enableSelecteMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/mms/ui/LockedMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/mms/ui/LockedMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/LockedMessageManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/LockedMessageManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/LockedMessageManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/LockedMessageManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->hideEmptyView()V

    return-void
.end method

.method private closeCursor()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v1, "Mms/LockedMsgStoreActivity"

    const-string v2, "close Cursor"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;IZLandroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v4, 0x7f040048

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-le p1, v5, :cond_0

    const v4, 0x7f0c017b

    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c007c

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
    const v4, 0x7f0c017a

    goto :goto_0
.end method

.method private deleteMessage(Landroid/net/Uri;Z)V
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private deleteSelectedMessages()V
    .locals 26

    const-string v20, "Mms/LockedMsgStoreActivity"

    const-string v21, "deleteSelectedMessages()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/16 v11, 0x15

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "sms"

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

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
    const-string v20, "transport_type"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v20, "locked"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-eqz v20, :cond_5

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    const/4 v9, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ne v5, v0, :cond_4

    const/16 v19, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v15

    new-instance v21, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;

    const/16 v20, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0c0078

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-static {v0, v15, v9, v1, v2}, Lcom/android/mms/ui/LockedMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;IZLandroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-void

    :catch_0
    move-exception v8

    const-string v20, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x7f0c017e

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto :goto_3
.end method

.method private disableAllMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0b03d2

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

    const v0, 0x7f0b03e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03f1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03f2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03f0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ee

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03f3

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

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->disableAllMenu(Landroid/view/Menu;)V

    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0b03d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b03d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

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

    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/LockedMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

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
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$5;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getMessagItem()Lcom/android/mms/ui/MessageItem;
    .locals 15

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-wide/16 v11, 0x0

    const-string v2, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCursor()Landroid/database/Cursor;

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

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1, v11, v12, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v14, v3

    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v14, :cond_3

    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v14}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v0

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

    :catch_1
    move-exception v8

    const-string v1, "Mms/LockedMsgStoreActivity"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v13

    goto :goto_2
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

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

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 3

    const-string v1, "Mms/LockedMsgStoreActivity"

    const-string v2, "initEmptyView"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    const-string v1, "Mms/LockedMsgStoreActivity"

    const-string v2, "initEmptyView inflate empty view"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->updateEmptyViewBackground(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEtc()V
    .locals 2

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-static {p0}, Lcom/android/mms/util/SmartClipUtils;->setConversationListTag(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$4;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initListAdapter()V
    .locals 3

    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/ui/LockedMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f04003e

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 3

    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$3;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    new-instance v0, Lcom/android/mms/animation/MsgListSelectionAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/animation/MsgListSelectionAnimation;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b014a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;-><init>(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/LockedMessageManager$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    new-instance v2, Lcom/android/mms/ui/LockedMessageManager$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/LockedMessageManager$2;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

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

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

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

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMultiSelectMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

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

    const-string v5, "Mms/LockedMsgStoreActivity"

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

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v5}, Lcom/android/mms/ui/LockedMessageManager;->getMessageItem(ILandroid/content/Context;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v5, "Mms/LockedMsgStoreActivity"

    const-string v6, "openThread can\'t find messageItem"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/LockedMessageManager;->getConversation(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "Mms/LockedMsgStoreActivity"

    const-string v6, "openThread can\'t find conversation"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->startActivity(Landroid/content/Intent;)V

    const-string v5, "Mms/LockedMsgStoreActivity"

    const-string v6, "openThread startActivity()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$6;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/LockedMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    return v1
.end method

.method private restoreListOffset()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4

    const v1, 0x7f0c00f3

    const v2, 0x7f0d0001

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/LockedMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Mms/LockedMsgStoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$7;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11

    :try_start_0
    const-string v7, "normalized_date DESC"

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

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(locked=1) AND (hidden=0)"

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " LIMIT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "complete-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(locked=1) AND (hidden=0)"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->beforeQuery()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private unlockSelectedMessages()V
    .locals 27

    const-string v3, "Mms/LockedMsgStoreActivity"

    const-string v4, "unlockSelectedMessages()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v11, 0x0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v22

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v22

    if-ge v14, v0, :cond_8

    const/16 v17, 0x0

    const/16 v16, 0x1

    const/16 v15, 0x16

    :try_start_0
    const-string v3, "transport_type"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    :goto_1
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    :try_start_1
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    :goto_2
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    :try_start_2
    const-string v3, "group_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    :goto_3
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :catch_0
    move-exception v13

    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v13

    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v13

    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    add-int/lit8 v24, v24, 0x1

    const-string v3, "mms"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    :goto_5
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    :cond_1
    const-string v3, "wpm"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    :cond_2
    const-string v3, "im"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    :cond_3
    const-string v3, "ft"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    :cond_4
    const-string v3, "im"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    :cond_5
    const-string v3, "ft"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    :cond_6
    cmp-long v3, v20, v18

    if-nez v3, :cond_7

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    :cond_7
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    :cond_8
    if-nez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    :cond_9
    :goto_6
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "locked"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v14, 0x0

    :goto_7
    move/from16 v0, v24

    if-ge v14, v0, :cond_e

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v4, 0x70a

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v25, 0x0

    add-int/lit8 v8, v24, -0x1

    if-ne v14, v8, :cond_d

    const/4 v8, 0x1

    :goto_8
    move-wide/from16 v0, v25

    invoke-direct {v5, v0, v1, v8}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_6
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/LockedMsgStoreActivity"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateEmptyScreen(IZ)V
    .locals 5

    const/4 v2, 0x0

    const-string v1, "Mms/LockedMsgStoreActivity"

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

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMessageCount:I

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    if-le v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMessageCount:I

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    iput v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMessageCount:I

    :cond_2
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initEmptyView()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->updateActionBarTitle()V

    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateSelectionMenu()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->hideEmptyView()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateEmptyViewBackground(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->isEmptyViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private updateMultiActionMenu(Landroid/view/Menu;)V
    .locals 14

    const v13, 0x7f0b03d2

    const v12, 0x7f0b03f2

    const v11, 0x7f0b03f1

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getMessagItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f0b03ee

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b03ee

    invoke-static {v5, p1, v6}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v3}, Lcom/android/mms/ui/LockedMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const v5, 0x7f0b03ef

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const v5, 0x7f0b03e6

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b03e6

    invoke-static {v5, p1, v6}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    :cond_7
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v5, :cond_10

    const v5, 0x7f0b03f0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_8
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isNoReservedMessage()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_9
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    if-eq v5, v9, :cond_a

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    :cond_a
    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v5

    if-gt v5, v9, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_c
    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->isSimReady(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v3, v10}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/android/mms/ui/MessageUtils;->getCopyToSimMenuName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v11}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    :cond_d
    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isSimReady(I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v3, v9}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/mms/ui/MessageUtils;->getCopyToSimMenuName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v12}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    :cond_e
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v5

    if-eqz v5, :cond_f

    const v5, 0x7f0b03f3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_f
    invoke-interface {p1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v13}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    const v5, 0x7f0b03e8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0b03e8

    invoke-static {v5, p1, v6}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_8

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    if-eqz v4, :cond_8

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

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v5, "Mms/LockedMsgStoreActivity"

    invoke-virtual {v2}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v11}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    goto/16 :goto_2
.end method


# virtual methods
.method getMessageItem(ILandroid/content/Context;)Lcom/android/mms/ui/MessageItem;
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

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

    invoke-direct {p0, v3}, Lcom/android/mms/ui/LockedMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

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

    const-string v1, "Mms/LockedMsgStoreActivity"

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

    invoke-direct {p0, p2}, Lcom/android/mms/ui/LockedMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

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

    const-string v1, "Mms/LockedMsgStoreActivity"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    goto :goto_0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const-string v5, "Mms/LockedMsgStoreActivity"

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
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
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

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getNumber(I)Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->isMessageIndex(I)Z

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
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

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

    const-string v0, "Mms/LockedMsgStoreActivity"

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

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->updateEmptyViewBackground(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateSelectionButtonHeight()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateTitleTextSize()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f040040

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->setContentView(I)V

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initResourceRefs()V

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initListAdapter()V

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initListAnimation()V

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initEtc()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/LockedMessageManager$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/LockedMessageManager$1;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->registerMultiWindowBroadcastReciver()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->closeCursor()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQuery()V

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
    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const v3, 0x7f0c048f

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

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

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->setAnimationEnable(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->saveListOffset()V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    iget-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->refreshFontSize()V

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startFakeAsyncQuery()V

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->closeCursor()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMessageCount:I

    goto :goto_0
.end method

.method public onSweepActionCanceled(I)V
    .locals 3

    const-string v0, "Mms/LockedMsgStoreActivity"

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

    const-string v2, "Mms/LockedMsgStoreActivity"

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

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/LockedMsgStoreActivity"

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

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->openThread(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3

    const-string v0, "Mms/LockedMsgStoreActivity"

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

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->clearCheckedList()V

    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLastItemOfSelectAll:Z

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setAnimationEnable(Z)V

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->clearCheckedList()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mModeCallback:Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateSelectionMenu()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void
.end method

.method public updateActionBarTitle()V
    .locals 7

    const v3, 0x7f0c02e4

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

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

    iget-object v6, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

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
