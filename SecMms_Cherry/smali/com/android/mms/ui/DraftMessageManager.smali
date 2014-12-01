.class public Lcom/android/mms/ui/DraftMessageManager;
.super Landroid/app/Activity;
.source "DraftMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DraftMessageManager$ModeCallback;,
        Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field public static final LIST_MULTIMODE_DELETE:I = 0x1

.field public static final MENU_DELETE_ALL:I = 0xc8

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final MESSAGE_LIST_SELECTION:Ljava/lang/String;

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/DraftMessageManager"

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

.field private final mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

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

.field private mMessageCount:I

.field mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

.field private mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

.field private mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

.field private mSelectedButton:Landroid/widget/Button;

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(type=3 OR msg_box=3) AND thread_id<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    iput-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsDeleteMsgAnimating:Z

    iput-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    iput-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsSelectAllmode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLastItemOfSelectAll:Z

    iput-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    iput-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteComplete:Z

    iput v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListMultiMode:I

    iput v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMessageCount:I

    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$8;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$9;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/DraftMessageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/DraftMessageManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/DraftMessageManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/DraftMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteComplete:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/DraftMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteComplete:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/DraftMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/DraftMessageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->startViewer(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/DraftMessageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->openThread(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/DraftMessageManager;I)Lcom/android/mms/data/Conversation;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/DraftMessageManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/DraftMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/DraftMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/DraftMessageManager;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgListSelectionAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/DraftMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/DraftMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/DraftMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/DraftMessageManager;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/DraftMessageManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/DraftMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/mms/ui/DraftMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/DraftMessageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/DraftMessageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/DraftMessageManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/DraftMessageManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/DraftMessageManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->hideEmptyView()V

    return-void
.end method

.method private closeCursor()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "close Cursor"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;IZLandroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
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

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

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

.method private delayedRecipientRefresh(J)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$10;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private deleteMessage(Landroid/net/Uri;Z)V
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private deleteSelectedMessages()V
    .locals 26

    const-string v20, "Mms/DraftMessageManager"

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

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

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

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/DraftMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    const/4 v9, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCheckedCount()I

    move-result v15

    new-instance v21, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;

    const/16 v20, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

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

    invoke-static {v0, v15, v9, v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;IZLandroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

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

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "Mms/DraftMessageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConversation position="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v7, v4, Landroid/database/Cursor;

    if-nez v7, :cond_1

    const-string v7, "Mms/DraftMessageManager"

    const-string v8, "getConversation object isn\'t cursor instance"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/DraftMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v7, "Mms/DraftMessageManager"

    const-string v8, "getConversation can\'t find msgItem"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v6, v1

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v7, "Mms/DraftMessageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConversation threadId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private getCreateDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$5;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

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

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 3

    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "initEmptyView"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "initEmptyView inflate empty view"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->updateEmptyViewBackground(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEtc()V
    .locals 2

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-static {p0}, Lcom/android/mms/util/SmartClipUtils;->setConversationListTag(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$4;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initListAdapter()V
    .locals 3

    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/ui/DraftMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f04003e

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 3

    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$3;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    new-instance v0, Lcom/android/mms/animation/MsgListSelectionAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/animation/MsgListSelectionAnimation;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b014a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;-><init>(Lcom/android/mms/ui/DraftMessageManager;Lcom/android/mms/ui/DraftMessageManager$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    new-instance v2, Lcom/android/mms/ui/DraftMessageManager$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DraftMessageManager$2;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

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

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

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

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMultiSelectMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openThread(I)V
    .locals 7

    const-string v4, "Mms/DraftMessageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openThread startActivity for position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "Mms/DraftMessageManager"

    const-string v5, "openThread can\'t find conversation"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "FromSearchActivity"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->startActivity(Landroid/content/Intent;)V

    const-string v4, "Mms/DraftMessageManager"

    const-string v5, "openThread startActivity()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$6;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/DraftMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    return v1
.end method

.method private restoreListOffset()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4

    const v1, 0x7f0c00f3

    const v2, 0x7f0d0001

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Mms/DraftMessageManager"

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

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$7;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11

    :try_start_0
    const-string v7, "normalized_date DESC"

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "draft-messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

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

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->beforeQuery()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startViewer(I)V
    .locals 18

    const-string v2, "Mms/DraftMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startViewer position="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v2, v12, Landroid/database/Cursor;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v11, v12

    check-cast v11, Landroid/database/Cursor;

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/DraftMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v13

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v16

    const/4 v4, 0x0

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    const/4 v3, 0x0

    invoke-static {v2, v6, v7, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "address"

    const-string v3, ", "

    invoke-virtual {v9, v3}, Lcom/android/mms/data/ContactList;->formatNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v6, v7, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "from_draft_msgbox"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "draft_ThreadId"

    move-wide/from16 v0, v16

    invoke-virtual {v8, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/DraftMessageManager;->startActivity(Landroid/content/Intent;)V

    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "startViewer startActivity"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v15, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v3, 0x82

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateEmptyScreen(IZ)V
    .locals 6

    const/4 v3, 0x0

    const-string v2, "Mms/DraftMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmptyScreen(),resultCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMessageCount:I

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v4

    if-le v2, v4, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMessageCount:I

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v4

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    iput v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mMessageCount:I

    :cond_2
    if-nez p1, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initEmptyView()V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->updateActionBarTitle()V

    return-void

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->updateSelectionMenu()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->hideEmptyView()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemIds()[J

    move-result-object v2

    array-length v0, v2

    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->updateSelectionMenu()V

    :cond_9
    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    goto :goto_2
.end method

.method private updateEmptyViewBackground(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->isEmptyViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/DraftMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

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

    const-string v1, "Mms/DraftMessageManager"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    goto :goto_0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const-string v5, "Mms/DraftMessageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumber(),position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
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

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getNumber(I)Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->isMessageIndex(I)Z

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
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

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

    const-string v0, "Mms/DraftMessageManager"

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

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->updateEmptyViewBackground(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->updateSelectionButtonHeight()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mModeCallback:Lcom/android/mms/ui/DraftMessageManager$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageManager$ModeCallback;->updateTitleTextSize()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const v1, 0x7f040040

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->setContentView(I)V

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initResourceRefs()V

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initListAdapter()V

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initListAnimation()V

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initEtc()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/ui/DraftMessageManager$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DraftMessageManager$1;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->registerMultiWindowBroadcastReciver()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->closeCursor()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQuery()V

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
    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListMultiMode:I

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const v3, 0x7f0c007c

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getCreateDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->setAnimationEnable(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;)V

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->delayedRecipientRefresh(J)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->saveListOffset()V

    iget-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J
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

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->refreshFontSize()V

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startFakeAsyncQuery()V

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

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->closeCursor()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMessageCount:I

    goto :goto_0
.end method

.method public onSweepActionCanceled(I)V
    .locals 3

    const-string v0, "Mms/DraftMessageManager"

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

    const-string v2, "Mms/DraftMessageManager"

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

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/DraftMessageManager"

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

    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->openThread(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3

    const-string v0, "Mms/DraftMessageManager"

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

.method public setAnimationEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setAnimationEnable(Z)V

    :cond_1
    return-void
.end method

.method public updateActionBarTitle()V
    .locals 7

    const v3, 0x7f0c0367

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

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

    iget-object v6, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

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
