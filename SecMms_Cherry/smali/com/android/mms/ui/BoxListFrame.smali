.class public Lcom/android/mms/ui/BoxListFrame;
.super Landroid/widget/FrameLayout;
.source "BoxListFrame.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BoxListFrame$CancelMessageListener;,
        Lcom/android/mms/ui/BoxListFrame$SendNowListener;,
        Lcom/android/mms/ui/BoxListFrame$MessageData;,
        Lcom/android/mms/ui/BoxListFrame$ModeCallback;,
        Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;,
        Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;,
        Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIG_DIALOG:Ljava/lang/String; = "com.sec.android.app.firewall.action.CONFIG_DIALOG"

.field public static final ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_DRAFT_MMS_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_DRAFT_SMS_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_IN_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_IN_MMS_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_IN_SENT_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_IN_SIM1_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_IN_SIM2_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_IN_SMS_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_MESSAGES_PROJECTION:[Ljava/lang/String;

.field public static final ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_OUT_MMS_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_OUT_SIM1_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_OUT_SIM2_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_OUT_SMS_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_SENT_MMS_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_SENT_SIM1_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_SENT_SIM2_MESSAGE_URI:Landroid/net/Uri;

.field public static final ALL_SENT_SMS_MESSAGE_URI:Landroid/net/Uri;

.field private static final BLACK_LIST:Ljava/lang/String; = "blacklist"

.field private static final DELETE_ALL_BOX_TOKEN:I = 0x70b

.field private static final DELETE_MSG_QUERY_TOKEN:I = 0x709

.field private static final DELETE_SELECTED_MSG_TOKEN:I = 0x70a

.field private static final DRAFTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6ac

.field private static final DRAFTBOX_LIST_QUERY_TOKEN:I = 0x6ab

.field public static final FLAG_DELETE_COMPLETE:I = 0x66

.field public static final FLAG_DELETE_START:I = 0x65

.field private static final ICON_HTML_END:Ljava/lang/String; = "\" align=\"middle\"/>"

.field private static final ICON_HTML_START:Ljava/lang/String; = "<img src=\"@drawable/"

.field private static final INANDSENTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6b0

.field private static final INANDSENTBOX_LIST_QUERY_TOKEN:I = 0x6af

.field private static final INBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a6

.field private static final INBOX_LIST_QUERY_TOKEN:I = 0x6a5

.field public static final INDEX_DRAFT:I = 0x3

.field public static final INDEX_INANDSENTBOX:I = 0x5

.field public static final INDEX_INBOX:I = 0x0

.field public static final INDEX_OUTBOX:I = 0x2

.field public static final INDEX_SENTBOX:I = 0x1

.field public static final INDEX_WAPPUSH:I = 0x4

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field public static final LIST_MULTIMODE_DELETE:I = 0x1

.field private static final MENU_COMPOSE_NEW:I = 0x1

.field private static final MENU_DELETE:I = 0x2

.field private static final MENU_PREFERENCES:I = 0x6

.field private static final MENU_SEARCH:I = 0x3

.field private static final MENU_SELECT:I = 0x9

.field private static final MENU_SPAM_MESSAGE:I = 0x7

.field private static final MENU_TIMEDSEND:I = 0x4

.field private static final MENU_VIEW_BY:I = 0x8

.field private static final MENU_VIEW_CONV:I = 0x5

.field private static final OUTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a8

.field private static final OUTBOX_LIST_QUERY_TOKEN:I = 0x6a7

.field private static final PUSHBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6ae

.field private static final PUSHBOX_LIST_QUERY_TOKEN:I = 0x6ad

.field private static final SENTBOX_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6aa

.field private static final SENTBOX_LIST_QUERY_TOKEN:I = 0x6a9

.field private static TAG:Ljava/lang/String; = null

.field private static final WHITE_LIST:Ljava/lang/String; = "whitelist"

.field private static changeModeToFolderView:Z

.field private static festivalEndDate:Ljava/lang/Long;

.field private static festivalStartDate:Ljava/lang/Long;

.field private static mBoxId:I

.field private static mIsSearchMode:Z

.field private static mNotifyFailed:Z

.field private static mStatusBarNoti:Z

.field private static mStatusBarNotiPushMessage:Z


# instance fields
.field public alreadyUpdateCheckedList:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarFolderListType:Landroid/widget/Button;

.field private mActionbarLayout:Landroid/widget/LinearLayout;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private final mBoxListKeyListener:Landroid/view/View$OnKeyListener;

.field private mBoxSelMenu:Landroid/widget/PopupMenu;

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/BoxListFrame$MessageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCountToDelete:I

.field private mCurViewByMode:I

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteActionMode:Landroid/view/ActionMode;

.field private mDeleteConfirmDialog:Landroid/app/AlertDialog;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewBackground:Landroid/widget/ImageView;

.field private mEmptyViewPopup:Landroid/widget/TextView;

.field private mFirstItemId:J

.field private final mImgGetter:Landroid/text/Html$ImageGetter;

.field private mIntent:Landroid/content/Intent;

.field private mIsDeletedAll:Z

.field public mIsFestivalMemoryMode:Z

.field private mIsLandscape:Z

.field private mIsLastItemOfSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mIsViewByMode:Z

.field private mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

.field private mListAdapterCount:I

.field private mListMultiMode:I

.field public mListType:I

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

.field private mMsgUri:Landroid/net/Uri;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

.field private mSearchView:Landroid/widget/SearchView;

.field mSeen:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectedButton:Landroid/widget/Button;

.field private mSelectedItemTop:I

.field private mSelectedPosition:I

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSendSimSlot:I

.field private mViewBySelectorAdapter:Lcom/android/mms/ui/ViewBySelectorAdapter;

.field private mVisiblePosition:I

.field private onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private startNotiViewer:Z

.field update_read:Z

.field update_seen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v0, "Mms/BoxListFrame"

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->festivalStartDate:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->festivalEndDate:Ljava/lang/Long;

    sput-boolean v3, Lcom/android/mms/ui/BoxListFrame;->changeModeToFolderView:Z

    sput v3, Lcom/android/mms/ui/BoxListFrame;->mBoxId:I

    const/16 v0, 0x13

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

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "group_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sim_imsi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_MESSAGES_PROJECTION:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    sput-boolean v3, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    sput-boolean v3, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    const-string v0, "content://mms-sms/allinmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/alloutmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allsentmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/alldraft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allwappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allinsentmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SENT_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allinsim1message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SIM1_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allinsim2message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SIM2_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allinsmsmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SMS_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allinmmsmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MMS_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/alloutsim1message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_SIM1_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/alloutsim2message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_SIM2_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/alloutsmsmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_SMS_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/alloutmmsmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MMS_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allsentsim1message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_SIM1_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allsentsim2message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_SIM2_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allsentsmsmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_SMS_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/allsentmmsmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MMS_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/alldraftsmsmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_SMS_MESSAGE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/alldraftmmsmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MMS_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsSelectAllmode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLastItemOfSelectAll:Z

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowAddr:Ljava/lang/String;

    iput-wide v5, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowBody:Ljava/lang/String;

    iput-wide v5, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowSize:J

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowLocked:Z

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSendSimSlot:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowReadReport:Z

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$5;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mImgGetter:Landroid/text/Html$ImageGetter;

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$6;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$8;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$12;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSeen:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->alreadyUpdateCheckedList:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsSelectAllmode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLastItemOfSelectAll:Z

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowAddr:Ljava/lang/String;

    iput-wide v5, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowBody:Ljava/lang/String;

    iput-wide v5, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowSize:J

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowLocked:Z

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSendSimSlot:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowReadReport:Z

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$5;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mImgGetter:Landroid/text/Html$ImageGetter;

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$6;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$8;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$12;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSeen:I

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->alreadyUpdateCheckedList:Z

    return-void
.end method

.method private UriForDelOnViewByMode(II)Landroid/net/Uri;
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UriForDelOnViewByMode   : uriForDel ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    if-ne p1, v3, :cond_0

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SIM1_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    if-ne p1, v4, :cond_1

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SIM2_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SMS_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MMS_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    if-ne p1, v3, :cond_4

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_SIM1_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_SIM2_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_SMS_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_6
    if-ne p1, v2, :cond_7

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MMS_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    if-ne p1, v3, :cond_8

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_SIM1_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_SIM2_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_9
    if-ne p1, v1, :cond_a

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_SMS_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_a
    if-ne p1, v2, :cond_b

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MMS_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_3
    if-ne p1, v1, :cond_c

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_SMS_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_c
    if-ne p1, v2, :cond_d

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MMS_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_d
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

.method static synthetic access$100(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/BoxListFrame;Landroid/widget/SearchView;)Landroid/widget/SearchView;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->getCountOfNotDelMsg(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/BoxListFrame;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/PopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->deleteAllMessage(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListFrame;->deleteMessage(Landroid/database/Cursor;ZII)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/BoxListFrame;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/BoxListFrame;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListAdapter$MessageData;)Lcom/android/mms/ui/BoxListAdapter$MessageData;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->afterResult(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->refreshCheckedList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setPopMenuItemTitle()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/BoxListFrame;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$3400()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    return v0
.end method

.method static synthetic access$3402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->invokeStartViewerNewMsg(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/mms/ui/BoxListFrame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/mms/ui/BoxListFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startFakeAsyncQuery()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/ViewBySelectorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mViewBySelectorAdapter:Lcom/android/mms/ui/ViewBySelectorAdapter;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/BoxListFrame;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->startMsgListViewByQuery(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/mms/ui/BoxListFrame;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/mms/ui/BoxListFrame;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/data/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/BoxListFrame;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/BoxListFrame;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->closeSearchView()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/BoxListFrame;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/mms/ui/BoxListFrame;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->disableSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapterCount:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/mms/ui/BoxListFrame;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/BoxListFrame;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->disableAllMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/BoxListFrame;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->updateMultiActionMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/BoxListFrame;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/BoxListFrame;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->enableSelectedMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/mms/ui/BoxListFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/mms/ui/BoxListFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/android/mms/ui/BoxListFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/android/mms/ui/BoxListFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/BoxListFrame;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$7602(Lcom/android/mms/ui/BoxListFrame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/android/mms/ui/BoxListFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/BoxListFrame;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$7802(Lcom/android/mms/ui/BoxListFrame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/mms/ui/BoxListFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/BoxListFrame;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendSimSlot:I

    return v0
.end method

.method static synthetic access$8002(Lcom/android/mms/ui/BoxListFrame;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendSimSlot:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$8102(Lcom/android/mms/ui/BoxListFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/BoxListFrame;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/android/mms/ui/BoxListFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListFrame;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    return p0
.end method

.method private addRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private afterResult(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->updateEmptyScreen(I)V

    return-void
.end method

.method private applyImages(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    sget-object v6, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v7, "applyImages()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "%s"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<img src=\"@drawable/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0200d6

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" align=\"middle\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private beforeResult()V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->hideEmptyView()V

    return-void
.end method

.method private checkContactValidityWithDelay(I)V
    .locals 4

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

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

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$4;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clearNewMessageIconForNoti(J)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/mms/ui/BoxListFrame;->markAsRead(JLjava/lang/Runnable;Z)V

    return-void
.end method

.method private closeSearchView()V
    .locals 3

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSearchView(), mIsSearchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v1, 0x7f0c033c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v1, 0x7f0c033b

    goto :goto_0
.end method

.method private confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0076

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p2, :cond_0

    const v2, 0x7f0c0079

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c007c

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v2, 0x7f0c0078

    goto :goto_0
.end method

.method private confirmRecvMmsDialog(Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0315

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private deleteAllMessage(I)V
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAllMessage   : box ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/16 v1, 0x70b

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    return-void

    :pswitch_0
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_SENT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_OUT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_DRAFT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_PUSH_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SENT_MESSAGE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(date >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->festivalStartDate:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND date <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->festivalEndDate:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private deleteMessage(Landroid/database/Cursor;ZII)V
    .locals 10

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessage msgType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mms"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v0

    sub-int/2addr v0, p4

    if-ne p3, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v4, 0x0

    iget-boolean v9, p0, Lcom/android/mms/ui/BoxListFrame;->mIsDeletedAll:Z

    invoke-direct {v2, v4, v5, v3, v9}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLandroid/net/Uri;Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method private deleteSelectedItems()V
    .locals 12

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/mms/ui/BoxListFrame;->checkedListContains(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCountToDelete:I

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCountToDelete:I

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0078

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;ZZLandroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c017e

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/mms/ui/BoxListFrame;->mCountToDelete:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v0, v5, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private disableAllMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "disableAllMenu"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b03d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ce

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v0, 0x7f0b03d1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ea

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03eb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ec

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ed

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ee

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private disableSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private enableSelectedMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "enableSelectedMenu"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->disableAllMenu(Landroid/view/Menu;)V

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0b03d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b03d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getBoxId()I
    .locals 1

    sget v0, Lcom/android/mms/ui/BoxListFrame;->mBoxId:I

    return v0
.end method

.method private getCountOfNotDelMsg(Landroid/database/Cursor;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/mms/ui/BoxListAdapter;->isCheckedMsgId(JLjava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    return v3
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListFrame$9;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c023d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c023e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c023f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0240

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0163

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private static getMessageCount(Landroid/content/Context;IZ)I
    .locals 21

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "count(*)"

    aput-object v5, v3, v1

    const/16 v20, 0x0

    if-eqz p2, :cond_0

    const-string v4, "read = 0"

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    const-string v1, "content://mms-sms/wap-push-messages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    :cond_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v19

    :pswitch_1
    const-string v8, "(sms.type = 1)"

    const/4 v12, 0x0

    const-string v16, "(pdu.msg_box = 1) AND (m_type != 134) AND (m_type != 136)"

    goto :goto_0

    :pswitch_2
    const-string v8, "(sms.type = 2)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((group_id IS NULL) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "(sms.group_type = 2)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((group_id NOT NULL) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v16, "(pdu.msg_box = 2)"

    goto :goto_0

    :pswitch_3
    const-string v8, "(sms.type = 4) OR (sms.type = 5) OR (sms.type = 6)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((group_id IS NULL) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "(sms.group_type = 4) OR (sms.group_type = 5) OR (sms.group_type = 6)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((group_id NOT NULL) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v16, "(pdu.msg_box = 4)"

    goto/16 :goto_0

    :pswitch_4
    const-string v8, "(sms.type = 3)"

    const/4 v12, 0x0

    const-string v16, "(pdu.msg_box = 3) AND (pdu.thread_id != 9223372036854775806)"

    goto/16 :goto_0

    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((sms.type = 1 OR sms.type = 2) AND (sms.date >= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->festivalStartDate:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND sms.date <= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->festivalEndDate:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "((hidden = 0) AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "))"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(((pdu.msg_box = 1) AND (m_type != 134) AND (m_type != 136)) OR (pdu.msg_box = 2)) AND (pdu.date >= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->festivalStartDate:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND pdu.date <= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->festivalEndDate:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :cond_3
    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    :cond_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    :cond_7
    if-eqz v12, :cond_8

    if-eqz v4, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_a

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int v19, v19, v1

    :cond_9
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v16, :cond_b

    if-eqz v4, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v3

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int v19, v19, v1

    :cond_c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getMessageCountString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCount(Landroid/content/Context;IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/BoxListFrame;->getMessageCount(Landroid/content/Context;IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0184

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getTokenFromIndex(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x6a5

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x6a9

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x6a7

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x6ab

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x6ad

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x6af

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getUriFromIndex(I)Landroid/net/Uri;
    .locals 1

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

    :pswitch_5
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->ALL_IN_SENT_MESSAGE_URI:Landroid/net/Uri;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private hideEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initEmptyView()V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "initEmptyView"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0b0092

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "initEmptyView inflate empty view"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmptyPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b014d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0330

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->applyImages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mImgGetter:Landroid/text/Html$ImageGetter;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    const v3, 0x7f020219

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b0048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewBackground:Landroid/widget/ImageView;

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->updateEmptyViewBackground(Z)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private invokeStartViewLatestMsg(Landroid/database/Cursor;J)V
    .locals 12

    const/4 v11, 0x1

    sget-object v9, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v10, "invokeStartViewLatestMsg()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const-string v9, "transport_type"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget v9, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    const/4 v8, 0x0

    const-string v9, "sms"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v10, 0x0

    invoke-static {v9, p2, p3, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v1

    const-string v9, "msgUri"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "exit_on_sent"

    invoke-virtual {v1, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v9, "fromFolderView"

    invoke-virtual {v1, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v9, "mms"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    :cond_3
    const-string v9, "mms"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "m_type"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v9, 0x82

    if-ne v3, v9, :cond_5

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v7

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;

    invoke-direct {v0, p0, v4, v5}, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;J)V

    const/16 v9, 0x81

    if-eq v7, v9, :cond_4

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->confirmRecvMmsDialog(Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;)V

    :cond_4
    :goto_2
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/mms/ui/BoxListFrame;->drawMessagePointer(JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v10, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_3
    const/high16 v9, 0x24000000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v9, "msgId"

    invoke-virtual {v2, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "thread_id"

    invoke-virtual {v2, v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "fromFolderView"

    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v10, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v10, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "msgId"

    invoke-virtual {v2, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "thread_id"

    invoke-virtual {v2, v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v9, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    const-string v9, "isWapPush"

    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    const-string v9, "fromFolderView"

    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private invokeStartViewerNewMsg(Landroid/database/Cursor;)V
    .locals 14

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x1

    if-ne v13, v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    :cond_3
    const/4 v0, 0x2

    if-eq v13, v0, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    const/4 v0, 0x1

    if-eq v13, v0, :cond_5

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "invokeStartViewerNewMsg()  ***STOP INVOKING MSG VIEW***"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "mms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pduHeaders : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "fromFolderView"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->startNotiViewer:Z

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0, v10, v6}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0, v8, v9, v10}, Lcom/android/mms/ui/BoxListFrame;->drawMessagePointer(JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/BoxListFrame;->clearNewMessageIconForNoti(J)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    const/high16 v0, 0x24000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "fromFolderView"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "fromFolderView"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0, v10, v6}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "msgId"

    invoke-virtual {v6, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    const-string v0, "isWapPush"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    const-string v0, "fromFolderView"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

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

.method private isFailedMessage()Z
    .locals 13

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v12

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    move v10, v11

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v5, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "err_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    if-lt v8, v0, :cond_7

    move v9, v11

    :goto_2
    if-nez v9, :cond_4

    if-eqz v10, :cond_0

    :cond_4
    move v12, v11

    goto :goto_0

    :cond_5
    move v10, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    move v9, v12

    goto :goto_2
.end method

.method private isFirstItemChanged()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isReadMessage()Z
    .locals 13

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_1

    move v9, v4

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-nez v0, :cond_2

    move v9, v4

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v6, "read"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v10, v6, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-ne v8, v12, :cond_4

    const/4 v9, 0x1

    :cond_4
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v6, "read"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v10, v6, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private refreshCheckedList()V
    .locals 15

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-wide/16 v12, 0x0

    const-string v14, ""

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->equals(JLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v3, 0x0

    :cond_2
    const/4 v11, 0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-virtual {v11, v5, v6, v7}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->equals(JLjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_0

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-wide/16 v12, 0x0

    const-string v14, ""

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isMultiSelectMode()Z

    move-result v11

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5

    iget v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_7
    const/4 v11, 0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/mms/ui/BoxListFrame;->checkedListContains(JLjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v2, Lcom/android/mms/ui/BoxListFrame$MessageData;

    invoke-direct {v2, p0, v5, v6, v7}, Lcom/android/mms/ui/BoxListFrame$MessageData;-><init>(Lcom/android/mms/ui/BoxListFrame;JLjava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_7

    :cond_9
    iput-object v8, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_a

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v11}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    invoke-virtual {v11}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->updateSelectionMenu()V

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    # getter for: Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v11}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->access$4000(Lcom/android/mms/ui/BoxListFrame$ModeCallback;)Landroid/view/Menu;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/Menu;->close()V

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v11}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_0

    :cond_a
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/BoxListAdapter;->getCheckedCount()I

    move-result v11

    if-eq v10, v11, :cond_f

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_c

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/ui/BoxListFrame$MessageData;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mId:J
    invoke-static {v11}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4100(Lcom/android/mms/ui/BoxListFrame$MessageData;)J

    move-result-wide v5

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/ui/BoxListFrame$MessageData;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mType:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4200(Lcom/android/mms/ui/BoxListFrame$MessageData;)Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v11, v5, v6, v7}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v11, v5, v6, v7}, Lcom/android/mms/ui/BoxListAdapter;->checkedListRemove(JLjava/lang/String;)Z

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/mms/ui/BoxListFrame;->alreadyUpdateCheckedList:Z

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v11}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    const/4 v9, 0x0

    :goto_3
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v11

    if-ge v9, v11, :cond_f

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v9, v11, :cond_d

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLastItemOfSelectAll:Z

    :cond_d
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v11, v9}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_e

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/mms/ui/BoxListFrame;->checkedListContains(JLjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v9, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->setItemChecked(IZ)V

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_f
    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    invoke-virtual {v11}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->updateSelectionMenu()V

    iget-object v11, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v11}, Landroid/view/ActionMode;->invalidate()V

    goto/16 :goto_0
.end method

.method private removeRecipientsListener()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method private restoreListOffset()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedPosition:I

    if-ltz v2, :cond_2

    iput v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I

    if-ltz v2, :cond_0

    iput v3, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectedItemTop:I

    goto :goto_0
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setListTitle()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/mms/ui/BoxListFrame;->changeModeToFolderView:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->changeModeToFolderView:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPopMenuItemTitle()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f0b03dc

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f0b03dd

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v7, v7}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f0b03de

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x2

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f0b03df

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x3

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f0b03e0

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x4

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$7;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 9

    :try_start_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->getUriFromIndex(I)Landroid/net/Uri;

    move-result-object v3

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->getTokenFromIndex(I)I

    move-result v1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(date >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->festivalStartDate:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND date <= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->festivalEndDate:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->cancelOperation(I)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->ALL_MESSAGES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->ALL_MESSAGES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_2
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->beforeResult()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startFromMessageWidget(J)V
    .locals 7

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFromMessageWidget() threadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "normalized_date DESC LIMIT 1"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "transport_type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "msg_box"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "m_type"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "card_mode"

    aput-object v3, v2, v0

    const-string v0, "content://mms-sms/complete-conversations-including-drafts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hidden = 0"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lcom/android/mms/ui/BoxListFrame;->updateListTypeFromWidget(Landroid/database/Cursor;)V

    invoke-direct {p0, v6, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->invokeStartViewLatestMsg(Landroid/database/Cursor;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private startMsgListViewByQuery(I)V
    .locals 9

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->beforeResult()V

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->getUriFromIndex(I)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->getTokenFromIndex(I)I

    move-result v1

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    iput p1, p0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    if-ne p1, v2, :cond_1

    const-string v5, "transport_type = \'sms\'"

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->cancelOperation(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->ALL_MESSAGES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string v5, "transport_type = \'mms\'"

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string v5, "sim_slot = 0"

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string v5, "sim_slot = 1"

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateEmptyScreen(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmptyScreen(),resultCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->initEmptyView()V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->hideEmptyView()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->initEmptyView()V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->hideEmptyView()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateEmptyViewBackground(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->isEmptyViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewBackground:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private updateFolderListActionBar()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->getListTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionbarFolderListType:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$2;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxSelMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$3;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0
.end method

.method private updateList(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/BoxListFrame;->changeModeToFolderView:Z

    :cond_1
    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v1, Lcom/android/mms/ui/BoxListFrame;->mBoxId:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/BoxListViewActivity;->notifyBoxDataChanged(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    iput v3, p0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    :cond_2
    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03dc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateListForFestival()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v0, Lcom/android/mms/ui/BoxListFrame;->mBoxId:I

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->notifyBoxDataChanged(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    :cond_0
    return-void
.end method

.method private updateListTypeFromWidget(Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "updateListTypeFromWidget()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "transport_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v2, Lcom/android/mms/ui/BoxListFrame;->mBoxId:I

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    return-void

    :pswitch_0
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :pswitch_1
    iput v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :pswitch_2
    iput v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :pswitch_3
    iput v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :cond_2
    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "msg_box"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :pswitch_5
    iput v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :pswitch_6
    iput v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :pswitch_7
    iput v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :cond_3
    const-string v2, "wpm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private updateListWithoutNotify(I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->setListTitle()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

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

.method private updateMultiActionMenu(Landroid/view/Menu;)V
    .locals 13

    const v12, 0x7f0b03e7

    const v11, 0x7f0b03e6

    const v10, 0x7f0b03e5

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v5, "updateMultiActionMenu"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0b03d2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BoxListFrame$MessageData;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mId:J
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4100(Lcom/android/mms/ui/BoxListFrame$MessageData;)J

    move-result-wide v5

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4200(Lcom/android/mms/ui/BoxListFrame$MessageData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0b03cf

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f0b03d0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03cf

    invoke-static {v4, p1, v5}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    :cond_1
    const v4, 0x7f0b03e1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-nez v4, :cond_5

    const v4, 0x7f0b03e2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v4, :cond_e

    const v4, 0x7f0b03e8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_2
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v5, v5, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3, v8, v8}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v2, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f0b03e9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f0b03eb

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_a
    const v4, 0x7f0b03ed

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMarkAsReadOption()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->isReadMessage()Z

    move-result v4

    if-nez v4, :cond_b

    const v4, 0x7f0b03d4

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f0b03d6

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v4, 0x7f0b03d5

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_d
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_e
    const v4, 0x7f0b03e8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    :cond_f
    const v4, 0x7f0b03ea

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mReserved:I

    if-ne v4, v9, :cond_10

    const v4, 0x7f0b03e3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f0b03e4

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_10
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_12
    :goto_4
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v4, :cond_16

    const v4, 0x7f0b03e8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_5
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f0b03eb

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_13
    const v4, 0x7f0b03ed

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_15
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    :cond_16
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->isFailedMessage()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1a

    const v4, 0x7f0b03ee

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_17
    :goto_6
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_18
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_19
    :goto_7
    const v4, 0x7f0b03ec

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v4, 0x7f0b03ed

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_1a
    const v4, 0x7f0b03ee

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f0b03ee

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_6

    :cond_1b
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_1c
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkedListContains(JLjava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/android/mms/ui/BoxListFrame$MessageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListFrame$MessageData;-><init>(Lcom/android/mms/ui/BoxListFrame;JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public configurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 4

    sget-object v1, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configurationChanged(),newConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    goto :goto_0
.end method

.method public confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;ZZLandroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v5, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",hasLockedMessages="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",resourceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f040048

    const/4 v6, 0x0

    invoke-static {p4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b0055

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v5, 0x7f0b0054

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setHasLockedMessage(Z)V

    if-nez p3, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    const v5, 0x7f0c0077

    :goto_1
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    return-void

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    new-instance v5, Lcom/android/mms/ui/BoxListFrame$11;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/mms/ui/BoxListFrame$11;-><init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v5, 0x7f0c0076

    goto :goto_1
.end method

.method public drawMessagePointer(JLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msgType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->setListItemSelected(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public drawMessageTouchPointer()V
    .locals 2

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public finishMultiSelectMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public getBoxListAdapter()Lcom/android/mms/ui/BoxListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    return-object v0
.end method

.method public getEmailAddress(I)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v6, "getEmailAddress"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_1

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, ";"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v7

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v0, v7

    goto :goto_0

    :cond_2
    move-object v4, v5

    goto :goto_0

    :cond_3
    move-object v4, v5

    goto :goto_0
.end method

.method public getListType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    return v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 5

    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v4, "getNumber"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumber_SweepCall(I)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v6, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v8, "getNumber_SweepCall"

    invoke-static {v6, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v6, :cond_1

    move-object v6, v7

    :goto_0
    return-object v6

    :cond_1
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const-string v6, "sms"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-eq v6, v10, :cond_3

    if-eqz v2, :cond_3

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_3
    if-eqz v2, :cond_4

    const-string v6, ";"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v9

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v1, v9

    goto :goto_0

    :cond_4
    move-object v6, v7

    goto :goto_0

    :cond_5
    move-object v6, v7

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber_SweepCall(I)Ljava/lang/String;

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
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    return v0
.end method

.method protected listItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "list item click : cursor null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v17, 0x0

    const-string v2, "sms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    move-wide v0, v15

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v8

    const-string v2, "msgUri"

    move-object/from16 v0, v17

    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "msgType"

    invoke-virtual {v8, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/BoxListFrame;->closeSearchView()V

    goto :goto_0

    :cond_4
    const-string v2, "mms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string v2, "mms"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2, v12, v13, v14}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pduHeaders : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/BoxListFrame;->startNotiViewer:Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2, v14, v9}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/mms/ui/BoxListFrame;->drawMessagePointer(JLjava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v3, 0x82

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->clearNewMessageIconForNoti(J)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c007e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_4
    const/high16 v2, 0x24000000

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_9
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2, v14, v9}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_b
    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "msgId"

    invoke-virtual {v9, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "thread_id"

    move-wide v0, v15

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    const-string v2, "isWapPush"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method

.method public declared-synchronized markAsRead(JLjava/lang/Runnable;Z)V
    .locals 12

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/mms/ui/BoxListFrame;->mSeen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p4, :cond_3

    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
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

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    :cond_4
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p4, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x80

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$14;

    invoke-direct {v4, p0, v2, v11, p3}, Lcom/android/mms/ui/BoxListFrame$14;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {v0, p1, p2, v1, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOneForMmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v11, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/16 v7, 0x80

    new-instance v8, Lcom/android/mms/ui/BoxListFrame$15;

    invoke-direct {v8, p0, v2, v11, p3}, Lcom/android/mms/ui/BoxListFrame$15;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    const/4 v9, 0x0

    move-wide v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v11, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_b
    if-eqz p4, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v11, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_seen:Z

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/16 v7, 0x80

    new-instance v8, Lcom/android/mms/ui/BoxListFrame$16;

    invoke-direct {v8, p0, v2, v11, p3}, Lcom/android/mms/ui/BoxListFrame$16;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    const/4 v9, 0x0

    move-wide v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/MessageUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v11, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->update_read:Z

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_10
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public markAsRead(Lcom/android/mms/ui/MessageItem;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sms"

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput v5, p1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$13;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/ui/BoxListFrame$13;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v5, "MarkAsRead"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    const-string v3, "sms"

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    const-string v3, "mms"

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_6
    const-string v3, "wpm"

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_7
    const-string v3, "mms"

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v5, p1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    goto :goto_2
.end method

.method public notifyLocked()V
    .locals 9

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "msgId"

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "fromFolderView"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    const-string v6, "isWapPush"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v6, "mms"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v6, v1, v2, v3}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v6, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v6, v6, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v7, 0x82

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startNotiViewer(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v3, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v6, v3, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startViewer(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->updateEmptyViewBackground(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->updateSelectionButtonHeight()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    invoke-direct {p0, p2}, Lcom/android/mms/ui/BoxListFrame;->setIntent(Landroid/content/Intent;)V

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mQueryHandler:Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040023

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mBoxListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->onBoxListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setChoiceMode(I)V

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    invoke-direct {v4, p0, v10}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;-><init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$1;)V

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mModeCallback:Lcom/android/mms/ui/BoxListFrame$ModeCallback;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    iput v7, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const-string v4, "from_noti_multi"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "from_noti_outbox"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v9, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    :cond_0
    :goto_0
    const-string v4, "festivalMemoryWidget"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    iget-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const-string v4, "startDate"

    invoke-virtual {p2, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/BoxListFrame;->festivalStartDate:Ljava/lang/Long;

    const-string v4, "endDate"

    invoke-virtual {p2, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/BoxListFrame;->festivalEndDate:Ljava/lang/Long;

    :cond_1
    const v4, 0x7f0b004f

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0051

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/android/mms/ui/BoxListAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-direct {v4, v5, v10, v7, v6}, Lcom/android/mms/ui/BoxListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/BoxListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/mms/ui/BoxListFrame$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/BoxListFrame$1;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateFolderListActionBar()V

    const-string v4, "StatusBarNoti"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    const-string v4, "notifyFailed"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onCreate] mStatusBarNoti="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mNotifyFailed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v5, "[onCreate : mStatusBarNoti(1)] move to INBOX & query"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/mms/ui/BoxListFrame;->updateListWithoutNotify(I)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v7, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    iput v7, p0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    :cond_4
    iget v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v4, Lcom/android/mms/ui/BoxListFrame;->mBoxId:I

    const-string v4, "fromWidget"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "thread_id"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    if-eqz v0, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->startFromMessageWidget(J)V

    :cond_5
    return-void

    :cond_6
    const-string v4, "from_noti_wappush"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    goto/16 :goto_0

    :cond_7
    sget-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v5, "[onCreate : mNotifyFailed(2)] move to OUTBOX & query"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/mms/ui/BoxListFrame;->updateListWithoutNotify(I)V

    goto :goto_1
.end method

.method public onDeleteCompleted()V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v4, Lcom/android/mms/ui/BoxListFrame;->mBoxId:I

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    iget v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/BoxListAdapter;->setListType(I)V

    :cond_0
    const-string v4, "StatusBarNoti"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    const-string v4, "notifyFailed"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    const-string v4, "from_noti_wappush"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    const-string v4, "thread_id"

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "fromWidget"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "festivalMemoryWidget"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onNewIntent] mStatusBarNoti="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mNotifyFailed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const-string v4, "startDate"

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/BoxListFrame;->festivalStartDate:Ljava/lang/Long;

    const-string v4, "endDate"

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/BoxListFrame;->festivalEndDate:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->updateListForFestival()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->startFromMessageWidget(J)V

    :cond_2
    iget v4, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    sput v4, Lcom/android/mms/ui/BoxListFrame;->mBoxId:I

    return-void

    :cond_3
    sget-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNoti:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mStatusBarNotiPushMessage:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v5, "[onNewIntent : mStatusBarNoti(0)] move to PUSH BOX & query"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v5, "[onNewIntent : mStatusBarNoti(1)] move to INBOX & query"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    goto :goto_0

    :cond_5
    sget-boolean v4, Lcom/android/mms/ui/BoxListFrame;->mNotifyFailed:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v5, "[onNewIntent : mNotifyFailed(2)] move to OUTBOX & query"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->updateList(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    move v5, v3

    :goto_1
    :sswitch_1
    return v5

    :sswitch_2
    iput v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    move v5, v6

    goto :goto_1

    :sswitch_3
    iput v6, p0, Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableComposeWhenLowMemory()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLowMemoryMode()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0484

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v7, 0x0

    invoke-static {v5, v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "fromFolderView"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "exit_on_sent"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    sput-boolean v6, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    iget-object v7, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "conversationList"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListViewActivity;->onBoxListViewbyMode()V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->setViewbyModeLayout()V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEntranceSetting()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/settings/EntrancePrefActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :sswitch_9
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v4}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_0
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_7
        0x9 -> :sswitch_2
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->resetView()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->closeSearchView()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "onPrepareOptionsMenu()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "onPrepareOptionsMenu() Already search mode"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const v2, 0x7f0c048f

    invoke-interface {p1, v4, v8, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f0c0096

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200d0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v3, 0x7f0f0000

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v2, 0x7f0b03cc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    new-instance v2, Lcom/android/mms/ui/BoxListFrame$10;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BoxListFrame$10;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->isEmptyViewVisible()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    const v3, 0x7f0c0175

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020108

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    const v2, 0x7f0c0002

    invoke-interface {p1, v5, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0202d8

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    const v2, 0x7f0c048f

    invoke-interface {p1, v5, v8, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    const/4 v2, 0x5

    const v3, 0x7f0c0243

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020110

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v2

    if-le v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    if-ne v2, v5, :cond_7

    :cond_6
    const v2, 0x7f0c0486

    invoke-interface {p1, v4, v7, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f0c028f

    invoke-interface {p1, v5, v6, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x6

    const v3, 0x7f0c0003

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mEmptyViewPopup:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    const v2, 0x7f0c028e

    invoke-interface {p1, v5, v6, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v3, "onResume"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    :cond_0
    :goto_0
    const/16 v2, 0x12c

    invoke-direct {p0, v2}, Lcom/android/mms/ui/BoxListFrame;->checkContactValidityWithDelay(I)V

    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListFrame;->startNotiViewer:Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->saveListOffset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "[onStart] trigger query"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->addRecipientsListener()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->initRecipientlistForCache()V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->startFakeAsyncQuery()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    iput v2, p0, Lcom/android/mms/ui/BoxListFrame;->mCurViewByMode:I

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListFrame;->removeRecipientsListener()V

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->startNotiViewer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxListFrame;->mListAdapterCount:I

    :cond_1
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez p2, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber_SweepCall(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    :goto_0
    return-void

    :cond_0
    sget-object v12, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v12, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v13, "onSweepActionFired calling(itemIndex:%d, number:%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v12, v8}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v12, v0, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getNumber(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/BoxListFrame;->getEmailAddress(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v11, 0x0

    const-string v12, "sms"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v12, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const/4 v13, 0x0

    invoke-static {v12, v9, v10, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v1

    const-string v12, "msgUri"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v12, "msgType"

    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v12, "mms"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    :cond_7
    if-nez v8, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    const-wide/16 v13, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.SENDTO"

    const-string v13, "sms"

    const/4 v14, 0x0

    invoke-static {v13, v8, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v12, "fromFolderView"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v12, "exit_on_sent"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v12, "boxlist_sweep_action"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v12, v6}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto/16 :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    sget-object v0, Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;

    const-string v1, "[onUpdate] contact updated"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/BoxListFrame$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BoxListFrame$17;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListFrame;->mIsFestivalMemoryMode:Z

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setViewbyModeLayout()V
    .locals 6

    const/4 v5, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0486

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/android/mms/ui/ViewBySelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/ViewBySelectorAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mViewBySelectorAdapter:Lcom/android/mms/ui/ViewBySelectorAdapter;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mViewBySelectorAdapter:Lcom/android/mms/ui/ViewBySelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/BoxListFrame$18;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BoxListFrame$18;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v1, v5, :cond_2

    new-instance v1, Lcom/android/mms/ui/ViewBySelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/ViewBySelectorAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mViewBySelectorAdapter:Lcom/android/mms/ui/ViewBySelectorAdapter;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/android/mms/ui/ViewBySelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewByMessageType()Z

    move-result v3

    invoke-direct {v1, v2, v4, v3}, Lcom/android/mms/ui/ViewBySelectorAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mViewBySelectorAdapter:Lcom/android/mms/ui/ViewBySelectorAdapter;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/mms/ui/ViewBySelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewByMessageType()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/ViewBySelectorAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame;->mViewBySelectorAdapter:Lcom/android/mms/ui/ViewBySelectorAdapter;

    goto :goto_0
.end method

.method public startSearchView()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/BoxListFrame;->mIsSearchMode:Z

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
