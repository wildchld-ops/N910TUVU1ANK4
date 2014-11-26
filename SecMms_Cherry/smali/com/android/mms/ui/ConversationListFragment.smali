.class public Lcom/android/mms/ui/ConversationListFragment;
.super Landroid/app/Fragment;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;
.implements Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;,
        Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;,
        Lcom/android/mms/ui/ConversationListFragment$ModeCallback;,
        Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    }
.end annotation


# static fields
.field private static final ACTION_COMPOSEMESSAGE:Ljava/lang/String; = "com.android.mms.ui.conversationlistfragment.composemessage"

.field private static final ACTION_CONFIG_DIALOG:Ljava/lang/String; = "com.sec.android.app.firewall.action.CONFIG_DIALOG"

.field private static final ACTION_DELETE:Ljava/lang/String; = "com.android.mms.ui.composemessagefragment.delete"

.field private static final ACTION_SEARCHMESSAGES:Ljava/lang/String; = "com.android.mms.ui.conversationlistfragment.searchmessages"

.field private static final ASSISTANTMENU_ACTIVITY:Ljava/lang/String; = "com.android.mms.ui.ConversationComposer"

.field private static final ASSISTANTMENU_FRAGMENT_CONVERSATIONLIST:Ljava/lang/String; = "com.android.mms.ui.ConversationListFragment"

.field public static final BIND_COMPLETE_COUNT:I = 0x12

.field private static final BLACK_LIST:Ljava/lang/String; = "blacklist"

.field private static final CHECKED_MESSAGE_LIMITS:Ljava/lang/String; = "checked_message_limits"

.field public static final DELETE_ALL_CONVERSATION_TOKEN:I = 0x709

.field public static final DELETE_CONVERSATION_TOKEN:I = 0x70a

.field static final EASY_SIGN_UP_PACKAGE:Ljava/lang/String; = "com.sec.orca.easysignup"

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_FAIL:I = 0xca

.field public static final FLAG_DELETE_START:I = 0xc8

.field static final FREE_MESSAGE_PACKAGE:Ljava/lang/String; = "com.sec.orca.freemessage"

.field public static final HAVE_LOCKED_MESSAGES_IN_SELECTED_TOKEN:I = 0x70d

.field public static final HAVE_LOCKED_MESSAGES_TOKEN:I = 0x70b

.field public static final HAVE_SMS_IN_THREAD:I = 0x70e

.field private static final ICON_HTML_END:Ljava/lang/String; = "\" align=\"middle\"/>"

.field private static final ICON_HTML_START:Ljava/lang/String; = "<img src=\"@drawable/"

.field private static final LIST_MULTIMODE_ADD_PRIORITY_SENDER:I = 0x3

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field public static final LIST_MULTIMODE_DELETE:I = 0x1

.field private static final LIST_MULTIMODE_DELETE_PRIORITY_SENDER:I = 0x4

.field public static final LIST_MULTIMODE_SAVE:I = 0x2

.field public static final MENU_ACCOUNTS:I = 0xda

.field public static final MENU_ADD_PRIORITY_SENDER_TO_CONTACT:I = 0x12e

.field public static final MENU_ADD_TO_BLACK_LIST:I = 0xe6

.field public static final MENU_ADD_TO_CONTACTS:I = 0xcb

.field public static final MENU_ADD_TO_SECRET_THREAD:I = 0xea

.field public static final MENU_ADD_TO_WHITE_LIST:I = 0xe7

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0xcc

.field public static final MENU_COMPOSE_NEW:I = 0xc8

.field public static final MENU_CP_MESSAGES:I = 0xcc

.field public static final MENU_DELETE:I = 0xc8

.field public static final MENU_DELETE_ALL:I = 0xcb

.field public static final MENU_DRAFT_MESSAGES:I = 0xd5

.field public static final MENU_EASY_SIGN_UP:I = 0xd9

.field public static final MENU_EDIT_PRIORITY_SENDER:I = 0x12c

.field public static final MENU_EDIT_PRIORITY_SENDER_CANCEL:I = 0xf1

.field public static final MENU_EDIT_PRIORITY_SENDER_DONE:I = 0xf0

.field public static final MENU_FONT_SIZE:I = 0xd8

.field public static final MENU_FREE_GROUPCHAT:I = 0xd1

.field public static final MENU_HELP:I = 0xfa

.field public static final MENU_LOCKED_MSG_MANAGER:I = 0xd3

.field public static final MENU_MODE_EDIT_PRIORITY_SENDER:I = 0xa

.field public static final MENU_MODE_NORMAL:I = 0x0

.field public static final MENU_PREFERENCES:I = 0xcd

.field public static final MENU_RCS_GROUP_CHAT:I = 0xea

.field public static final MENU_REMOVE_FROM_BLACK_LIST:I = 0xe8

.field public static final MENU_REMOVE_FROM_SECRET_THREAD:I = 0xeb

.field public static final MENU_REMOVE_FROM_WHITE_LIST:I = 0xe9

.field public static final MENU_SAVE_CONV:I = 0xce

.field public static final MENU_SAVE_RESTORE_SDCARD:I = 0xd7

.field public static final MENU_SCHEDULED_MSG_MANAGER:I = 0xd6

.field public static final MENU_SEARCH:I = 0xc9

.field public static final MENU_SELECT:I = 0xca

.field public static final MENU_SPAM_MSG_MANAGER:I = 0xd4

.field public static final MENU_TEMPLATES:I = 0xd0

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0xcd

.field public static final MENU_VIEW:I = 0xc9

.field public static final MENU_VIEW_BOX:I = 0xd2

.field public static final MENU_VIEW_CONTACT:I = 0xca

.field public static final MENU_VIEW_PRIORITY_SENDER_CONTACT:I = 0x12d

.field public static final MSG_ASYNC_CHAT_CLOSE:I = 0x3

.field public static final MSG_CHATS_DELETED:I = 0x0

.field private static final OFFSET:I = 0xc8

.field private static final REQUEST_CODE_PICK_CONTACT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListFragment"

.field private static final THREAD_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final THREAD_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final THREAD_LIST_QUERY_NO_LIMIT:I = -0x1

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x6a5

.field private static final VERIFICATION_LOG_TAG:Ljava/lang/String; = "VerificationLog"

.field private static final WHITE_LIST:Ljava/lang/String; = "whitelist"

.field public static badge:Landroid/widget/QuickContactBadge;

.field private static deleteComplete:Z

.field public static mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static mCancelButton:Landroid/widget/Button;

.field private static mDoneButton:Landroid/widget/Button;

.field public static mIsEmptyThread:Z

.field private static mIsSearchMode:Z

.field private static mSearchQuery:Ljava/lang/CharSequence;

.field private static mSelected_spinner_item:I


# instance fields
.field private CheckInitSpinner:Z

.field public checkAnim:Z

.field private isDeleteLockedMessages:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mActivity:Lcom/android/mms/ui/ConversationComposer;

.field private mAddPrioritySender:Landroid/widget/TextView;

.field private mAddPrioritySenderHeight:I

.field private mAnimationListenerToLeft:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationListenerToRight:Landroid/view/animation/Animation$AnimationListener;

.field private mCheckedChatIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSessionIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedThreadIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mConvlist:Landroid/view/View;

.field private mCountToDelete:I

.field private mDeleteActionMode:Landroid/view/ActionMode;

.field private mDeleteChatThreadHandler:Landroid/content/AsyncQueryHandler;

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeletedCount:J

.field private mDiscardContentChanged:Z

.field private final mEasyModeComposeBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mEasyModeComposeLayout:Landroid/widget/LinearLayout;

.field private mEasyModeComposeText:Landroid/widget/TextView;

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewBackground:Landroid/widget/ImageView;

.field private mEmptyViewPopup:Landroid/widget/TextView;

.field private mEnablePrioritySender:Z

.field private mFirstItemId:J

.field private mHandler:Landroid/os/Handler;

.field private mHasLockedMsgThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mIdxMsgPreferFontSize:I

.field private final mImgGetter:Landroid/text/Html$ImageGetter;

.field mImmConv:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAnimationEnable:Z

.field private mIsDelayForSearch:Z

.field private mIsDeleteMsgAnimating:Z

.field private mIsDeleting:Z

.field private mIsEasyMode:Z

.field private mIsInEditMode:Z

.field private mIsLandscape:Z

.field private mIsLastItemOfSelectAll:Z

.field private mIsSelectAllmode:Z

.field mIsTalkbackOn:Z

.field private mLinearLayout_search:Landroid/widget/LinearLayout;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListAdapterCount:I

.field private mListMultiMode:I

.field private mListQueryOnStart:Z

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private final mMenuBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMenuMode:I

.field mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

.field private mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mOverlapView:Landroid/widget/FrameLayout;

.field private mOverlayView:Landroid/widget/LinearLayout;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mPrioritySenderContextMenu:Landroid/view/View$OnCreateContextMenuListener;

.field private mPrioritySenderEditItemLongClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

.field private mPrioritySenderHeight:I

.field private mPrioritySenderItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

.field private mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

.field private mPrioritySenderNormalItemLongClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

.field public mProfileUri:Landroid/net/Uri;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

.field private mSearchMenu:Landroid/view/MenuItem;

.field mSearchPlate:Landroid/widget/EditText;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

.field private mSelectedAddress:Ljava/lang/String;

.field private mSelectedButton:Landroid/widget/Button;

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLockedMsgThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field private mSelectedSmsThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

.field private mSpiner_item:[Ljava/lang/CharSequence;

.field private mSpinner:Landroid/widget/Spinner;

.field public final mStatusReceiverHandler:Landroid/os/Handler;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private final sContactsLocalProfileObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    sput v0, Lcom/android/mms/ui/ConversationListFragment;->mSelected_spinner_item:I

    sput-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    sput-object v1, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sput-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    sput-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProfileUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListFragment$1;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeText:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->checkAnim:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListQueryOnStart:Z

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mImmConv:Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchPlate:Landroid/widget/EditText;

    iput v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIdxMsgPreferFontSize:I

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsTalkbackOn:Z

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    iput v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSelectAllmode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLastItemOfSelectAll:Z

    iput-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsInEditMode:Z

    iput v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->isDeleteLockedMessages:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDiscardContentChanged:Z

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$8;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$18;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$22;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$25;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$25;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeBtnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$28;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$28;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mImgGetter:Landroid/text/Html$ImageGetter;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$29;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$29;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$30;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$31;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$31;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderNormalItemLongClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$32;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderEditItemLongClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$35;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$35;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuBtnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$36;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$36;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$37;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$37;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mStatusReceiverHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->addPrioritySender()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$10002(Lcom/android/mms/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$10100(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    return v0
.end method

.method static synthetic access$10200(Lcom/android/mms/ui/ConversationListFragment;I)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgListAnimation;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/android/mms/ui/ConversationListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/content/DialogInterface;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDiscardContentChanged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationListFragment;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startPrioritySenderQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    return-object v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2402(I)I
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/mms/ui/ConversationListFragment;->mSelected_spinner_item:I

    return p0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ConversationListFragment;JI)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # J
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ConversationListFragment;J)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ConversationListFragment;I)Lcom/android/mms/data/Conversation;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteChatThreadHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/AsyncQueryHandler;)Landroid/content/AsyncQueryHandler;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/content/AsyncQueryHandler;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteChatThreadHandler:Landroid/content/AsyncQueryHandler;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->isDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->isDeleteLockedMessages:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/android/mms/ui/ConversationListFragment;J)J
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    return-wide p1
.end method

.method static synthetic access$4314(Lcom/android/mms/ui/ConversationListFragment;J)J
    .locals 2
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # J

    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->onDeleteRcsThreads(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHasLockedMsgThread:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mHasLockedMsgThread:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedLockedMsgThread:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedLockedMsgThread:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedSingleThread()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->requestEndChatInList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ConversationListFragment;I)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ConversationListFragment;I)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startedFromLaundher()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedSessionIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedSessionIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedChatIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedChatIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/saverestore/SaveRestoreOperation;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/android/mms/ui/ConversationListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/android/mms/ui/ConversationListFragment;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Lcom/android/mms/data/Conversation;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->splitThread(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgListSelectionAnimation;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapterCount:I

    return v0
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/ConversationListFragment;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setEasyModeComposerDisable(Z)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/ConversationListFragment;ZZ)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->updatePrioritySenderVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ConversationListFragment;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setPrioritySenderDisable(Z)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initEasyMode()V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/Menu;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->disableAllMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/Menu;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->updateMultiActionMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/Menu;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->enableSelecteMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$9902(Lcom/android/mms/ui/ConversationListFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment;
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method private addPrioritySender()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v2, "PROI"

    invoke-static {v1, v2}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v2, Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationComposer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static applyImages(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/content/res/Resources;

    const-string v5, "Mms/ConversationListFragment"

    const-string v6, "applyImages()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "%s"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<img src=\"@drawable/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0200d6

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" align=\"middle\"/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private beforeQuery()V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    return-void
.end method

.method private closeCursor()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "close Cursor"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method private closeSearchView(ZZ)V
    .locals 5
    .param p1    # Z
    .param p2    # Z

    const/4 v4, 0x0

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSearchView invalidate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    iput-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListFragment;->onCloseSearchView(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideSoftInputKeyboard()V

    :cond_2
    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mSearchQuery:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    sput-object v4, Lcom/android/mms/ui/ConversationListFragment;->mSearchQuery:Ljava/lang/CharSequence;

    :cond_3
    return-void
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .param p0    # J
    .param p2    # Landroid/content/AsyncQueryHandler;

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThread(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 11
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .param p1    # Z
    .param p2    # Z
    .param p3    # Landroid/content/Context;
    .param p4    # I

    const-string v6, "Mms/ConversationListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",hasLockedMessages="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",deleteCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v6, 0x7f040048

    const/4 v7, 0x0

    invoke-static {p3, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0b0055

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v6, 0x7f0b0054

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-le p4, v6, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c017c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le p4, v6, :cond_1

    const v5, 0x7f0c049d

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setHasLockedMessage(Z)V

    if-nez p2, :cond_2

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c007c

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0157

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v5, 0x7f0c049c

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    new-instance v6, Lcom/android/mms/ui/ConversationListFragment$21;

    invoke-direct {v6, p0, v3}, Lcom/android/mms/ui/ConversationListFragment$21;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private createNewMessage()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    return-void
.end method

.method private deleteSelectedConversations()V
    .locals 3

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversations()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v1, 0x70d

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0
.end method

.method private deleteSelectedSingleThread()V
    .locals 12

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v0, 0x4

    new-array v7, v0, [I

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v9, v7}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v10

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteChatThreadHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x70a

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->isDeleteLockedMessages:Z

    new-instance v4, Lcom/android/mms/ui/DeleteInfo;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v11, v6, :cond_2

    move v11, v3

    :goto_1
    invoke-direct {v4, v8, v9, v11}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10, v7}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v11, v5

    goto :goto_1
.end method

.method private disableAllMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1    # Landroid/view/Menu;

    const/4 v1, 0x0

    const v0, 0x7f0b03d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03ce

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v0, 0x7f0b03d1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b03d5

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
    .param p1    # Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private enableSelecteMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1    # Landroid/view/Menu;

    const v5, 0x7f0b03d4

    const v4, 0x7f0b03d3

    const v3, 0x7f0b03d1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->disableAllMenu(Landroid/view/Menu;)V

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0b03d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->checkSplitThreadCondition()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMarkAsReadOption()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->checkMarkAsReadCondition()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v0, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b03d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v0, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getCreateDialog()Landroid/app/ProgressDialog;
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v3, 0x7f0c0184

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$7;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "getQuantityText This fragment was detached from it\'s activity."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/ConversationComposer;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSpinnerItem()I
    .locals 1

    sget v0, Lcom/android/mms/ui/ConversationListFragment;->mSelected_spinner_item:I

    return v0
.end method

.method private hideEasyMode()V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "hideEasyMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyViewPopup()V

    return-void
.end method

.method private hideEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideSoftInputKeyboard()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    return-void
.end method

.method private initConversationDimensions()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderHeight:I

    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySenderHeight:I

    return-void
.end method

.method private initEasyMode()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "initEasyMode"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v3, 0x7f0b0153

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "initEasyMode inflate easy mode"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0b017a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment$26;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationListFragment$26;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyViewPopup()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1
.end method

.method private initEmptyView()V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    const-string v2, "Mms/ConversationListFragment"

    const-string v4, "initEmptyView"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v4, 0x7f0b0092

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "initEmptyView inflate empty view"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment$27;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationListFragment$27;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmptyPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b014d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const v2, 0x7f0c0331

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->applyImages(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mImgGetter:Landroid/text/Html$ImageGetter;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b0048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewBackground:Landroid/widget/ImageView;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const v3, 0x7f02021a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    :cond_3
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyViewBackground(Z)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0b014c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_5

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const v3, 0x7f020219

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private initListAdapter()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "initListAdapter()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->setSplitModePreference(Z)V

    new-instance v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    return-void
.end method

.method private initListAnimation()V
    .locals 3

    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$6;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    new-instance v0, Lcom/android/mms/animation/MsgListSelectionAnimation;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/animation/MsgListSelectionAnimation;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;

    return-void
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

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
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startedFromLaundher()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount(Landroid/content/ContentResolver;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "markCheckedMessageLimit()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyDeleteStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteStart()V

    return-void
.end method

.method private onDeleteRcsThreads(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    const-string v0, "Mms/ConversationListFragment"

    const-string v5, "onDeleteRcsThreads "

    invoke-static {v0, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "Mms/ConversationListFragment"

    const-string v5, "deletedChatList is null, return"

    invoke-static {v0, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_THREAD_BY_SESSION_ID:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v4, 0x0

    if-eqz v7, :cond_0

    const-string v4, "session_id = ?"

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    aput-object v6, v10, v11

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2, v4, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "session_id"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_3

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session_id = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-lez v7, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    iput v11, v9, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private openThread(J)V
    .locals 10
    .param p1    # J

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/16 v7, 0x7d0

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->collapseActionView()Z

    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getEnableAssistantMenu(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v7, 0x0

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v4

    const-string v6, "Mms/ConversationListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openThread startActivity for threadId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , CMAS= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isPresidential = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PhoneNumberFormatting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", FormattingImprove = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingImprove()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_4

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6, p1, p2}, Lcom/android/mms/ui/CMASViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/ConversationComposer;->requestSplitModeOnConverationList(Z)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v6

    if-ne v6, v9, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/mms/ui/ConversationListFragment$19;

    invoke-direct {v7, p0, v0}, Lcom/android/mms/ui/ConversationListFragment$19;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v6

    if-ne v6, v9, :cond_1

    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v7

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v6

    if-ne v6, v9, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/mms/ui/ConversationListFragment$20;

    invoke-direct {v7, p0, v2}, Lcom/android/mms/ui/ConversationListFragment$20;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method private openThread(JI)V
    .locals 9
    .param p1    # J
    .param p3    # I

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/16 v7, 0x7d0

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getEnableAssistantMenu(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v7, 0x0

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v3

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v4

    const-string v6, "Mms/ConversationListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openThread startActivity for threadId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , CMAS= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isPresidential = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_2

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6, p1, p2}, Lcom/android/mms/ui/CMASViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/ConversationComposer;->requestSplitModeOnConverationList(Z)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v7

    invoke-static {v6, p1, p2, v7, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZI)Landroid/content/Intent;

    move-result-object v2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private requestEndChatInList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationComposer;->requestAsyncEndChatSelect(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startClosingChatProgressDialogDismissTimer()V

    return-void
.end method

.method private restoreListOffset()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    goto :goto_0
.end method

.method private setEasyModeComposerDisable(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x67000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setMenuMode(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->setMenuMode(I)V

    :cond_0
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderNormalItemLongClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setDndMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    return-void

    :cond_4
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    invoke-direct {p0, v3, v3}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(ZZ)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderEditItemLongClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040044

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/mms/ui/ConversationListFragment;->mCancelButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$33;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$33;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/mms/ui/ConversationListFragment;->mDoneButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$34;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$34;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mDoneButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->notifyDataSetChanged()V

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private setPrioritySenderDisable(Z)V
    .locals 5
    .param p1    # Z

    const/16 v4, 0x8

    const/high16 v3, -0x67000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->updateOverViewHeight(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->updateOverViewHeight(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setSearchQuery(Ljava/lang/CharSequence;)V
    .locals 0
    .param p0    # Ljava/lang/CharSequence;

    sput-object p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchQuery:Ljava/lang/CharSequence;

    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .param p1    # Lcom/android/mms/ui/MsgSweepActionListView;

    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .param p1    # I

    const v1, 0x7f0c00f2

    const v2, 0x7f0d0002

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Mms/ConversationListFragment"

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

.method private showEasySignUpDialog(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;

    const-string v6, "com.sec.orca.easysignup"

    invoke-static {p1, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.sec.orca.freemessage"

    invoke-static {p1, v6}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "pref_key_init_easy_signup"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getImsi()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/MmsConfig;->getEasySignUpStatus(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04004c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0b0179

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0549

    new-instance v7, Lcom/android/mms/ui/ConversationListFragment$39;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/ConversationListFragment$39;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/mms/ui/ConversationListFragment$40;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/ConversationListFragment$40;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v6, Lcom/android/mms/ui/ConversationListFragment$41;

    invoke-direct {v6, p0, v1}, Lcom/android/mms/ui/ConversationListFragment$41;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v6, Lcom/android/mms/ui/ConversationListFragment$42;

    invoke-direct {v6, p0, v4}, Lcom/android/mms/ui/ConversationListFragment$42;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private splitThread(Lcom/android/mms/data/Conversation;)V
    .locals 32
    .param p1    # Lcom/android/mms/data/Conversation;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v28

    const-string v5, "Mms/ConversationListFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "splitThread() threadId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "(thread_id = ? and (reserved = 0))"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const/16 v26, 0x0

    const-string v5, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const-string v5, "address"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v5, "type"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v20, 0x0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v5, v8}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v8, 0x1

    move-object/from16 v0, v27

    invoke-static {v5, v0, v8}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v24

    new-instance v11, Landroid/content/ContentValues;

    const/4 v5, 0x4

    invoke-direct {v11, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "thread_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v11, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "hidden"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "group_id"

    move-object/from16 v0, v26

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "group_type"

    move-object/from16 v0, v26

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v3

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v5, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "update_thread"

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v0, v11, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    packed-switch v21, :pswitch_data_0

    const/16 v20, 0x0

    :goto_0
    sget-object v5, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "threads"

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "message_type"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object v13, v3

    invoke-static/range {v12 .. v17}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    new-instance v11, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v11, v5}, Landroid/content/ContentValues;-><init>(I)V

    sget-object v5, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "update_thread"

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v0, v11, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    :cond_2
    return-void

    :pswitch_0
    const/16 v20, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v20, 0x3

    goto :goto_0

    :pswitch_2
    const/16 v20, 0xb

    goto :goto_0

    :pswitch_3
    const/16 v20, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startAsyncQuery()V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "startAsyncQuery"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startPrioritySenderQuery()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 5
    .param p1    # Z

    :try_start_0
    const-string v1, "(_id>0)"

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v3, 0x6a4

    const/16 v4, 0xb

    invoke-static {v2, v3, v4, v1}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "VerificationLog"

    const-string v3, "Executed"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v3, 0x6a5

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v1}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startClosingChatProgressDialogDismissTimer()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$38;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$38;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private startHelpHub()V
    .locals 6

    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "startHelpHub"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v4, "com.samsung.helphub"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    rem-int/lit8 v2, v3, 0xa

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:section"

    const-string v4, "messaging"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startHelpHub version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:appid"

    const-string v4, "messages"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startHelpHub exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPrioritySenderQuery()V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "startPrioritySenderQuery"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    sget-object v1, Lcom/android/mms/glance/GlanceDBHelper;->PRIORITY_SENDER_COLUMNS:[Ljava/lang/String;

    const-string v4, "pri ASC"

    const/4 v5, 0x2

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    invoke-direct {p0, v7, v7}, Lcom/android/mms/ui/ConversationListFragment;->updatePrioritySenderVisibility(ZZ)V

    :cond_1
    return-void
.end method

.method private startedFromLaundher()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startedFromLaundher(),taskMovedToBack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v4, v4, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activityCreated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v4, v4, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v2, v2, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v2, v2, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iput-boolean v1, v2, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iput-boolean v1, v2, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startedFromLaundher(), ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static updateCmasExpiry(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "expired"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "calling updateCMASExpiry"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expired!=1 AND expires<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/mms/util/DummyFramework$Threads;->CMAS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateEmptyScreen(I)V
    .locals 7
    .param p1    # I

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmptyScreen(), resultCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isMultiSelectMode() ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initEmptyView()V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, v3, v3}, Lcom/android/mms/ui/ConversationListFragment;->updatePrioritySenderVisibility(ZZ)V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    iget v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapterCount:I

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapterCount:I

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_6
    if-nez p1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initEmptyView()V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "GATE"

    const-string v2, "<GATE-M>NO_MESSAGES</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateEmptyViewBackground(Z)V
    .locals 3
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isEmptyViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewBackground:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewBackground:Landroid/widget/ImageView;

    const v2, 0x7f0202a6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private updateEmptyViewPopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPopup:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMultiActionMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1    # Landroid/view/Menu;

    const v10, 0x7f0b03d1

    const v9, 0x7f0b03d0

    const v8, 0x7f0b03cf

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const v2, 0x7f0b03d2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v3, 0x7f0b03d2

    invoke-static {v2, p1, v3}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-virtual {v1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2, p1, v8}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v2, :cond_2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitThread()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->checkSplitThreadCondition()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0b03d3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMarkAsReadOption()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->checkMarkAsReadCondition()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0b03d4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x7f0b03d6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v2, 0x7f0b03d5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    return-void

    :cond_8
    invoke-virtual {v1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2, p1, v9}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2, p1, v8}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_a
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1
.end method

.method private updateOverViewHeight(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySenderHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySenderHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method private updatePrioritySenderVisibility(ZZ)V
    .locals 5
    .param p1    # Z
    .param p2    # Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationListFragment;->updateOverViewHeight(Z)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationListFragment;->updateOverViewHeight(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ConversationListFragment;->updateOverViewHeight(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationListFragment;->updateOverViewHeight(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # J

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method public checkMarkAsReadCondition()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v4, v2, v3, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public checkSplitThreadCondition()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v4, v2, v3, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/mms/data/Conversation;->getSmsCount(JLandroid/content/Context;ZZ)I

    move-result v4

    if-gtz v4, :cond_0

    :cond_1
    move v4, v5

    :goto_0
    return v4

    :cond_2
    move v4, v6

    goto :goto_0
.end method

.method closeSearchView(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(ZZ)V

    return-void
.end method

.method collapseSearchMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    :cond_0
    return-void
.end method

.method public confirmRegisterAsSpamNumber(Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;)V
    .locals 7
    .param p1    # Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v5, 0x7f04000d

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$24;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/mms/ui/ConversationListFragment$24;-><init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c03ed

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    invoke-virtual {v1, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public deleteSelectedConversationsRemote(J)V
    .locals 2
    .param p1    # J

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversationsRemote()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {p1, p2, v0}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    :cond_0
    return-void
.end method

.method public dismissDeleteConfirmDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public drawMessagePointer(J)V
    .locals 3
    .param p1    # J

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setListItemSelected(J)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public drawMessagePointer(JI)V
    .locals 1
    .param p1    # J
    .param p3    # I

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    return-void
.end method

.method public drawMessageTouchPointer()V
    .locals 2

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public finishMultiSelectMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public getAnimationEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method public getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method public getCurrentSearchView()Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public getFirstItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    return-wide v0
.end method

.method public getListCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 8
    .param p1    # I

    const/4 v4, 0x0

    const-string v5, "Mms/ConversationListFragment"

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

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aget-object v4, v3, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleBackKey()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->finishMultiSelectMode()V

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->resetDeleteAnimationIndex()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hasFocusOnSearchView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidecheckbox()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    :cond_0
    return-void
.end method

.method public isCallable(I)Z
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConversationIndex(I)Z
    .locals 5
    .param p1    # I

    const/4 v3, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isListIndex(I)Z
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->isConversationIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onActivityCreated()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;

    invoke-direct {v1}, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mStatusReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;->setHandler(Landroid/os/Handler;)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0009

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v6, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setChoiceMode(I)V

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    invoke-direct {v2, p0, v6}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ConversationListFragment$1;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderNormalItemLongClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationListFragment$4;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setDndListener(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$TwDndListener;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAdapter()V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startFakeAsyncQuery()V

    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListQueryOnStart:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v3}, Lcom/android/mms/saverestore/SaveRestoreOperation;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAnimation()V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initConversationDimensions()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "checked_message_limits"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->runOneTimeStorageLimitCheckForLegacyMessages()V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment$5;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationListFragment$5;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mProfileUri:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->showEasySignUpDialog(Landroid/content/Context;)V

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const-string v8, "Mms/ConversationListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult: requestCode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", resultCode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", has data="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p3, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x1

    if-eq p2, v7, :cond_2

    const-string v7, "Mms/ConversationListFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageAdhocGroupSizeMax()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-wide/16 v8, -0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    const-string v7, "open_blank_thread"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "add_recipient_message"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "from_chat_tab"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "sendto"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v7, "smsto:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v7, 0x1

    invoke-static {v4, v7}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v7, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-lez v5, :cond_5

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->showCheckSpamNumberDialog(Landroid/content/Intent;Lcom/android/mms/data/ContactList;)Z

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const v7, 0x7f0c050a

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageAdhocGroupSizeMax()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->getMaxAdhocGroupSize()I

    move-result v8

    if-ge v7, v8, :cond_9

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-wide/16 v8, -0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    const-string v7, "open_blank_thread"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "add_recipient_message"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "from_chat_tab"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "sendto"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v7, "smsto:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_9
    const v7, 0x7f0c050a

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->getMaxAdhocGroupSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCloseSearchView(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->setLayoutAnim_fadeInAndOut(Landroid/view/ViewGroup;Z)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1    # Landroid/content/res/Configuration;

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const-string v2, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configurationChanged(),newConfig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_a

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v2, :cond_b

    if-eq v0, v7, :cond_b

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPadding(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->updateSelectionButtonHeight()V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEmptyView()V

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryIfNeed()V

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b014c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/ConversationListFragment;->mSearchQuery:Ljava/lang/CharSequence;

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    :cond_8
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyViewBackground(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mModeCallback:Lcom/android/mms/ui/ConversationListFragment$ModeCallback;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->updateTitleTextSize()V

    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->resetDeleteAnimationIndex()V

    return-void

    :cond_a
    move v2, v4

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPadding(Z)V

    goto/16 :goto_1

    :cond_c
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getCMASViewerIsVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationComposer;->onCMASViewerContextItemSelected(Landroid/view/MenuItem;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    invoke-static {}, Lcom/android/mms/Omacp;->getInstance()Lcom/android/mms/Omacp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/Omacp;->registerObserver()V

    invoke-static {}, Lcom/android/mms/Omacp;->getInstance()Lcom/android/mms/Omacp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/Omacp;->checkOmacp()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v2, 0x0

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f040040

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const v0, 0x7f04003c

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0b0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlayView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0b0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0b0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$2;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$3;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->setDataExtractionListener(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;)V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 5

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "Thread delete end"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    iget-wide v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v2, 0x7f0c02ad

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method public onDeleteFailed()V
    .locals 3

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "Thread delete failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDeleteStart()V
    .locals 3

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "Thread delete start"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getCreateDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onDestroy()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    iput-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->sContactsLocalProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->OnDestroy()V

    iput-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->closeCursor()V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "close prioritySenderCursor"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v2, v4}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->resetDeleteAnimationIndex()V

    :cond_5
    invoke-static {}, Lcom/android/mms/Omacp;->getInstance()Lcom/android/mms/Omacp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/Omacp;->unregisterObserver()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "sContactsLocalProfileObserver is not registered"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDraftChanged(JZZ)V
    .locals 2
    .param p1    # J
    .param p3    # Z
    .param p4    # Z

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "post onDraftChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment$10;-><init>(Lcom/android/mms/ui/ConversationListFragment;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFontSizeSettingChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->resetConversatonList()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->requestChangeFontsizeOnComposer()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v8, 0x82

    const/4 v5, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v4

    :sswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-lt v6, v5, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/mms/ui/MsgSweepActionListView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->getId()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->playSoundEffect(I)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->isOnlyDummy()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->requestFocus()Z

    :cond_2
    :goto_1
    move v4, v5

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->getId()I

    move-result v6

    const/16 v7, 0xc9

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->playSoundEffect(I)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->isOnlyDummy()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListView:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->requestFocus()Z

    :cond_6
    :goto_2
    move v4, v5

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mOverlapView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    if-ne v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->playSoundEffect(I)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move v4, v5

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mAddPrioritySender:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MsgSweepActionListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-static {v8}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->playSoundEffect(I)V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsTalkbackOn:Z

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isEmptyViewVisible()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v4}, Lcom/android/mms/ui/FontSizeController;->increaseFontSize(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->onFontSizeSettingChanged()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsTalkbackOn:Z

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isEmptyViewVisible()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v4}, Lcom/android/mms/ui/FontSizeController;->decreaseFontSize(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->onFontSizeSettingChanged()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x14 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isEmptyViewVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->openOptionsMenu()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x29 -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onKeyUp()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isEmptyViewVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeChangeByVolumeKey(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->updateCmasExpiry(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const-string v9, "Mms/ConversationListFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onOptionsItemSelected(),item="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v5, :sswitch_data_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :sswitch_0
    iget v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    iget v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableComposeWhenLowMemory()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLowMemoryMode()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v10, 0x7f0c0484

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    goto :goto_1

    :sswitch_2
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/mms/ui/ConversationComposer;->setSipStatus(Z)V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->onConversationShowEmptyScreen()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v10, "MSEL"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_4
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v9}, Lcom/android/mms/animation/MsgListAnimation;->resetAnimationFlag()V

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x2

    iput v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->twShowMultiChoiceMode(Z)V

    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_6
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEntranceSetting()Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v10, Lcom/android/mms/settings/EntrancePrefActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v10, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->showFontSizeSettingDialog()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/android/mms/Omacp;->getInstance()Lcom/android/mms/Omacp;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/mms/Omacp;->broadcastSetCp(Landroid/app/Activity;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_9
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v10, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_a
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v10, Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_b
    const/4 v7, 0x0

    new-instance v7, Landroid/content/Intent;

    const-string v9, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "additional"

    const-string v10, "freechat-multi"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "additional2"

    const-string v10, "freechat-only-multi"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v9

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v10

    if-le v9, v10, :cond_6

    const-string v9, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    const-string v9, "FromMMS"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;I)V

    const-string v9, "from_chat_tab"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/android/mms/ui/ConversationListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v9, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageAdhocGroupSizeMax()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :sswitch_c
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->startEasySignUp()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_d
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.orca.easysignup.ACTION_LAUNCH_EASY_SIGNUP_BY_SETTING"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x80000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "additional2"

    const-string v1, "rcs-only-multi"

    new-instance v7, Landroid/content/Intent;

    const-string v9, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    :cond_7
    const-string v9, "additional"

    const-string v10, "email-phone-multi"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v9

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v10

    if-le v9, v10, :cond_9

    const-string v9, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_5
    const-string v9, "FromMMS"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;I)V

    const-string v9, "from_chat_tab"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/android/mms/ui/ConversationListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_8
    const-string v9, "additional"

    const-string v10, "phone-multi"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_9
    const-string v9, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->getMaxAdhocGroupSize()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    :sswitch_f
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v10, "LOKC"

    invoke-static {v9, v10}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->onConversationShowEmptyScreen()V

    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v10, Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_10
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v10, "SPMA"

    invoke-static {v9, v10}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->onConversationShowEmptyScreen()V

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v10, Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_11
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v10, "DRFA"

    invoke-static {v9, v10}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->onConversationShowEmptyScreen()V

    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v11, Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_12
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v10, "SCEH"

    invoke-static {v9, v10}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationComposer;->onConversationShowEmptyScreen()V

    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-class v11, Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_13
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->applyChanged()Z

    :cond_a
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_14
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_15
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startHelpHub()V

    const/4 v9, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0xcb -> :sswitch_4
        0xcc -> :sswitch_8
        0xcd -> :sswitch_6
        0xd0 -> :sswitch_a
        0xd1 -> :sswitch_b
        0xd2 -> :sswitch_9
        0xd3 -> :sswitch_f
        0xd4 -> :sswitch_10
        0xd5 -> :sswitch_11
        0xd6 -> :sswitch_12
        0xd7 -> :sswitch_5
        0xd8 -> :sswitch_7
        0xd9 -> :sswitch_c
        0xda -> :sswitch_d
        0xea -> :sswitch_e
        0xf0 -> :sswitch_13
        0xf1 -> :sswitch_14
        0xfa -> :sswitch_15
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->getEnableAssistantMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    :cond_0
    return-void
.end method

.method public onPrepareListOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .param p1    # Landroid/view/Menu;

    const/16 v12, 0xc9

    const/16 v9, 0xc8

    const/16 v8, 0x73

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v6, "Mms/ConversationListFragment"

    const-string v7, "onPrepareOptionsMenu()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getEnableAssistantMenu(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->registerAssistantMenu()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_2

    const-string v6, "Mms/ConversationListFragment"

    const-string v7, "onPrepareOptionsMenu() Already search mode"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "Mms/ConversationListFragment"

    const-string v7, "onPrepareOptionsMenu() Already mode-delete,move,lock,save,,,"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    if-eqz v6, :cond_6

    const-string v6, "Mms/ConversationListFragment"

    const-string v7, "onPrepareOptionsMenu() Delay for search mode"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-eqz v5, :cond_23

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initEasyMode()V

    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string v6, "Mms/ConversationListFragment"

    const-string v7, "onPrepareOptionsMenu()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getEnableAssistantMenu(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSearchExpandable()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const/high16 v7, 0x7f0f0000

    invoke-virtual {v6, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v6, 0x7f0b03cc

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SearchView;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "android:id/search_src_text"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v6, v6, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v6}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mImmConv:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v4}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchPlate:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchPlate:Landroid/widget/EditText;

    new-instance v7, Lcom/android/mms/ui/ConversationListFragment$14;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/ConversationListFragment$14;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v7, "search"

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    if-eqz v3, :cond_8

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationComposer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    :cond_8
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v10}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSearchExpandable()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b033c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v11}, Lcom/android/mms/ui/ConversationListFragment;->setLayoutAnim_slideSideToSide(Landroid/view/ViewGroup;Z)Landroid/view/animation/AnimationSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_4
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    new-instance v7, Lcom/android/mms/ui/ConversationListFragment$15;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/ConversationListFragment$15;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->expandActionView()Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSearchExpandable()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpiner_item:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b033d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/mms/ui/SPinnerArrayAdapter;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v7, 0x1090008

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpiner_item:[Ljava/lang/CharSequence;

    invoke-direct {v0, v6, v7, v8}, Lcom/android/mms/ui/SPinnerArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    const v6, 0x1090009

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/SPinnerArrayAdapter;->setDropDownViewResource(I)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-boolean v11, p0, Lcom/android/mms/ui/ConversationListFragment;->CheckInitSpinner:Z

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->getSpinnerItem()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v7, Lcom/android/mms/ui/ConversationListFragment$16;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/ConversationListFragment$16;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v7, Lcom/android/mms/ui/ConversationListFragment$17;

    invoke-direct {v7, p0, v0}, Lcom/android/mms/ui/ConversationListFragment$17;-><init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/SPinnerArrayAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_a
    sget-object v6, Lcom/android/mms/ui/ConversationListFragment;->mSearchQuery:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    sget-object v7, Lcom/android/mms/ui/ConversationListFragment;->mSearchQuery:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v10}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f0f0001

    invoke-virtual {v6, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v6, 0x7f0b03cd

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b033e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SearchView;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    goto/16 :goto_3

    :cond_c
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mLinearLayout_search:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v11}, Lcom/android/mms/ui/ConversationListFragment;->setLayoutAnim_fadeInAndOut(Landroid/view/ViewGroup;Z)Landroid/view/animation/AnimationSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_4

    :cond_d
    iget v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_e

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->isChanged()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/mms/ui/ConversationListFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_e
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    if-nez v6, :cond_f

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    iput-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKMRGUI()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_10

    const v6, 0x7f0c0175

    invoke-interface {p1, v10, v12, v10, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f020108

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_10
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-eqz v6, :cond_20

    const/4 v5, 0x1

    :cond_11
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKMRGUI()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_12

    const v6, 0x7f0c0175

    invoke-interface {p1, v10, v12, v10, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f020108

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_12
    invoke-static {}, Lcom/android/mms/Omacp;->getInstance()Lcom/android/mms/Omacp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/Omacp;->checkOmacp()V

    invoke-static {}, Lcom/android/mms/Omacp;->getInstance()Lcom/android/mms/Omacp;

    move-result-object v6

    const/16 v7, 0xcc

    invoke-virtual {v6, p1, v7}, Lcom/android/mms/Omacp;->addMenu(Landroid/view/Menu;I)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_13

    const/16 v6, 0xca

    const v7, 0x7f0c048f

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_13
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/16 v6, 0xd1

    const v7, 0x7f0c04fd

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v6, 0xd2

    const v7, 0x7f0c0242

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f020111

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v6, :cond_16

    const/16 v6, 0xd5

    const v7, 0x7f0c0367

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v6

    if-eqz v6, :cond_17

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v6, :cond_17

    const/16 v6, 0xd3

    const v7, 0x7f0c02e4

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v6, :cond_18

    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v6, 0xd4

    const v7, 0x7f0c028f

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_19
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_1a

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v6, :cond_1a

    const/16 v6, 0xd7

    const v7, 0x7f0c038a

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f020106

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v6, 0xd0

    const v7, 0x7f0c0489

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v6, 0xd8

    const v7, 0x7f0c03d0

    invoke-interface {p1, v10, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1c
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-nez v6, :cond_1d

    const/16 v6, 0xcd

    const v7, 0x7f0c0003

    invoke-interface {p1, v10, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1d
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.orca.easysignup"

    invoke-static {v6, v7}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.orca.freemessage"

    invoke-static {v6, v7}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getImsi()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getEasySignUpStatus(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1e

    const/16 v6, 0xd9

    const v7, 0x7f0c0546

    invoke-interface {p1, v10, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.orca.easysignup"

    invoke-static {v6, v7}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getImsi()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1f

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1f

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->isAuthEasySignUp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v6, 0xda

    const v7, 0x7f0c0569

    invoke-interface {p1, v10, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1f
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v7, "com.samsung.helphub"

    invoke-static {v6, v7}, Lcom/android/mms/util/PackageInfo;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    if-le v6, v11, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v7, "com.samsung.helphub"

    invoke-static {v6, v7}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    const/16 v6, 0xfa

    const v7, 0x7f0c04c0

    invoke-interface {p1, v10, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_20
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v6

    if-nez v6, :cond_21

    const/16 v6, 0xea

    const v7, 0x7f0c04fd

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f0202d9

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_21
    const v6, 0x7f0c0002

    invoke-interface {p1, v11, v9, v10, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f0202d8

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_5

    :cond_22
    const/16 v6, 0xd4

    const v7, 0x7f0c028e

    invoke-interface {p1, v11, v6, v10, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_23
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEasyMode()V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "Contact.setUseYellowPage(true)"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/mms/data/Contact;->setUseYellowPage(Z)V

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->updateCountryIso()V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment$23;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationListFragment$23;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsTalkbackOn:Z

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isAuthEasySignUp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isAuthFreeMessage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pref_key_enable_freemessage"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isAuthFreeMessage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "pref_key_enable_freemessage"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onSaveCompleted()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$11;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/ConversationListFragment;->mSearchQuery:Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 6

    const/16 v5, 0x378

    const/16 v4, 0xef

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v3, :cond_7

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotificationOnly(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotificationOnly(Landroid/content/Context;I)V

    :goto_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {v1, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->SetOnSaveCompleteListener(Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->updateCmasExpiry(Landroid/content/Context;)V

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnablePrioritySender(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListQueryOnStart:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    :goto_1
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_5
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0

    :cond_8
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListQueryOnStart:Z

    goto :goto_1
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapterCount:I

    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {v0, v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->SetOnSaveCompleteListener(Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;)V

    :cond_1
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .param p1    # I

    const-string v0, "Mms/ConversationListFragment"

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
    .locals 8
    .param p1    # I
    .param p2    # I

    const/4 v7, 0x1

    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSweepActionFired(),itemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",flickDirection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_1
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v4, v3}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v7, p2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    iget v6, v0, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .param p1    # I

    const-string v0, "Mms/ConversationListFragment"

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

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideSoftInputKeyboard()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0
.end method

.method public refreshSplitMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method public registerAssistantMenu()V
    .locals 8

    const/4 v7, 0x1

    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v3

    if-eq v3, v7, :cond_0

    iget v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    sput-object v3, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.mms.ui.conversationlistfragment.composemessage"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "com.android.mms.ui.conversationlistfragment.searchmessages"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v4, "com.android.mms.ui.ConversationComposer"

    const-string v5, "com.android.mms.ui.ConversationListFragment"

    const-string v6, "Search;Compose;"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/mms/util/UIUtils;->registerAssistantMenu(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Lcom/android/mms/ui/ConversationComposer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v4, "com.android.mms.ui.ConversationComposer"

    const-string v5, "com.android.mms.ui.ConversationListFragment"

    const-string v6, "Compose;"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/mms/util/UIUtils;->registerAssistantMenu(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "com.android.mms.ui.conversationlistfragment.searchmessages"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.mms.ui.composemessagefragment.delete"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v4, "com.android.mms.ui.ConversationComposer"

    const-string v5, "com.android.mms.ui.ConversationListFragment"

    const-string v6, "Search;Compose;Delete;"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/mms/util/UIUtils;->registerAssistantMenu(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v4, "com.android.mms.ui.ConversationComposer"

    const-string v5, "com.android.mms.ui.ConversationListFragment"

    const-string v6, "Compose;"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/mms/util/UIUtils;->registerAssistantMenu(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "com.android.mms.ui.conversationlistfragment.searchmessages"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v4, "com.android.mms.ui.ConversationComposer"

    const-string v5, "com.android.mms.ui.ConversationListFragment"

    const-string v6, "Search;"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/mms/util/UIUtils;->registerAssistantMenu(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 2
    .param p1    # J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestFocusOnConversationList(J)Z
    .locals 4
    .param p1    # J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move-result v2

    return v2
.end method

.method public resetConversatonList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOneTimeStorageLimitCheckForLegacyMessages(),autoDeleteEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$9;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAnimationEnable(Z)V
    .locals 2
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setAnimationEnable(Z)V

    :cond_1
    return-void
.end method

.method public setDiscardContentChanged(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDiscardContentChanged:Z

    return-void
.end method

.method public setEmptyView(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEnablePrioritySender:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;

    return-void
.end method

.method public setLayoutAnim_fadeInAndOut(Landroid/view/ViewGroup;Z)Landroid/view/animation/AnimationSet;
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Z

    const-wide/16 v6, 0x12c

    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-object v2

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setLayoutAnim_slideSideToSide(Landroid/view/ViewGroup;Z)Landroid/view/animation/AnimationSet;
    .locals 13
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Z

    const/high16 v2, 0x3f800000

    const v6, 0x3f4ccccd

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mAnimationListenerToLeft:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    new-instance v11, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v11, v12, v4}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-object v12

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move-object v2, v0

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mAnimationListenerToRight:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showCheckSpamNumberDialog(Landroid/content/Intent;Lcom/android/mms/data/ContactList;)Z
    .locals 13
    .param p1    # Landroid/content/Intent;
    .param p2    # Lcom/android/mms/data/ContactList;

    const/4 v7, 0x0

    new-instance v10, Lcom/android/mms/data/ContactList;

    invoke-direct {v10}, Lcom/android/mms/data/ContactList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    invoke-virtual {p2, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v11, v6}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p2, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v12, 0x7f04000e

    invoke-direct {v5, v11, v12, v10}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/data/ContactList;)V

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v11, 0x7f04000f

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v11, 0x7f0b0059

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c02bc

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c021e

    new-instance v12, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;

    invoke-direct {v12, p0, p1}, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c004e

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v5}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->getCheckedCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->setSaveButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :goto_1
    return v7

    :cond_2
    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->setSaveButton(Landroid/widget/Button;Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public showFontSizeSettingDialog()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0, p0}, Lcom/android/mms/ui/FontSizeController;->showFontSizeSettingDialog(Landroid/content/Context;Lcom/android/mms/ui/FontSizeController$OnFontSizeSettingChangedListener;)V

    goto :goto_0
.end method

.method public startAsyncQueryDelayed(J)V
    .locals 3
    .param p1    # J

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncQueryDelayed delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$12;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startAsyncQueryIfNeed()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDiscardContentChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDiscardContentChanged:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "startAsyncQueryIfNeed don\'t need to requery"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPrioritySenderQueryDelayed(J)V
    .locals 3
    .param p1    # J

    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPrioritySenderQueryDelayed delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$13;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startSearchMenu()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public trim()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "trim()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/mms/ui/ConversationListItem;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->trim()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unRegisterAssistantMenu()V
    .locals 5

    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v1, "com.android.mms.ui.ConversationComposer"

    const-string v2, "com.android.mms.ui.ConversationListFragment"

    const-string v3, "Search;Compose;Delete;"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/util/UIUtils;->registerAssistantMenu(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    goto :goto_0
.end method
