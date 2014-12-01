.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field public static final ACTION_IS_AUTH:Ljava/lang/String; = "com.sec.orca.easysignup.ACTION_IS_AUTH"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "type"

.field private static final DEBUG:Z = false

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final INVALID_POSITION:I = -0x1

.field private static final REQUEST_CODE_REQUEST_RECENT_CONTACTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field private static final TAG_RECIPIENT_DATAIDS:Ljava/lang/String; = "recipientdataids"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I = 0x0

.field public static final TYPE_GRID:I = 0x1

.field public static final TYPE_LIST:I = 0x2

.field public static final TYPE_NONE:I

.field private static mIsEasySingUpIsCertificated:Z

.field private static mIsRemoteShareServiceDownloaded:Z


# instance fields
.field private final ACTION_AUTH_RESULT:Ljava/lang/String;

.field private final ACTION_REQ_AUTH:Ljava/lang/String;

.field private final EXTRA_AUTH_RESULT:Ljava/lang/String;

.field private final EXTRA_CB_HANDLER:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

.field private final KEY_AUTH_TYPE:Ljava/lang/String;

.field private final KEY_IS_AUTH:Ljava/lang/String;

.field private final RECENT_CONTACTS_LIST_MAX_COUNT:I

.field private final REMOTE_SHARE_SERVICE_ID:I

.field public final REQUEST_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field public final RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field private final RESULT_FAILED:I

.field private final RESULT_SUCCESS:I

.field private final TOKEN_IS_AUTH:I

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mApplyRemoteShareResolver:Z

.field private mApplyRemoteShareUIFeature:Z

.field private mApplyRemoteShareUIFeatureChecked:Z

.field private mContext:Landroid/content/Context;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

.field mEasySignUpReciverfilter:Landroid/content/IntentFilter;

.field private mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

.field private mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

.field private mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

.field private mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mIntent:Landroid/content/Intent;

.field private mIsDeviceDefault:Z

.field private mIsEasySingUpIsCertificatedChecked:Z

.field private mIsGridType:Z

.field private mIsLightTheme:Z

.field private mIsRecentContactsReceiverRegistered:Z

.field private mIsRemoteShareServiceDownloadedChecked:Z

.field private mItemLongClicked:Z

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/AbsListView;

.field private mMaxColumns:I

.field private mNoApplication:Ljava/lang/CharSequence;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrivateModeSettingsValBeforeOnFocusChanged:I

.field private mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

.field private mRecentContactsId:[J

.field private mRecentContactsItemContactsCountInGroup:[I

.field private mRecentContactsListCount:I

.field private mRecentContactsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactsListThumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRemoteShareIndex:I

.field private mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

.field private mRemoteShareQuickConnectIndex:I

.field private mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

.field private mRemoteShareRecentHistoryDefaultIndex:I

.field private mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

.field private mRemoteShareRecentHistoryIndex:I

.field private mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

.field private mRemoteShareSettingsValBeforeOnPause:I

.field private mShowExtended:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private request_dataids:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x9

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeature:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeatureChecked:Z

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareSettingsValBeforeOnPause:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->REMOTE_SHARE_SERVICE_ID:I

    const-string v0, "com.sec.rshareshell.requestrecentgroupcontacts"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->REQUEST_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    const-string v0, "com.sec.rshareshell.responserecentgroupcontacts"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    const-string/jumbo v0, "recentgroupnames"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

    const-string/jumbo v0, "recentgroupthumbnail"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

    const-string/jumbo v0, "recentgroupdataids"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

    const-string/jumbo v0, "recentgroupcontactids"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

    const-string/jumbo v0, "recentgroupcount"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

    const-string v0, "extra_cb_handler"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_CB_HANDLER:Ljava/lang/String;

    const-string v0, "is_auth"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->KEY_IS_AUTH:Ljava/lang/String;

    const-string v0, "auth_type"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->KEY_AUTH_TYPE:Ljava/lang/String;

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->TOKEN_IS_AUTH:I

    const-string v0, "com.sec.orca.easysignup.ACTION_REQ_AUTH"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->ACTION_REQ_AUTH:Ljava/lang/String;

    const-string v0, "com.sec.orca.easysignup.ACTION_AUTH_RESULT"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->ACTION_AUTH_RESULT:Ljava/lang/String;

    const-string v0, "extra_auth_result"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_AUTH_RESULT:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->RESULT_SUCCESS:I

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->RESULT_FAILED:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private RemoteShareGridItemClick(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    if-nez v3, :cond_0

    const-string v3, "ResolverActivity"

    const-string/jumbo v4, "mGridRemoteShare.onItemClick : mRemoteShareListAdapter is null, finish "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "additional"

    const-string/jumbo v4, "phone-multi"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "first_tab"

    const-string v4, "favourites-tab-first"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "has_result"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    const-string v3, "additional"

    const-string/jumbo v4, "phone-multi"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "first_tab"

    const-string v4, "contacts-tab-first"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "has_result"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.rshareshell.action.REQUESTSEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.sec.rshareshell"

    const-string v4, "com.sec.rshareshell.RelayActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private RemoteShareQuickConnectGridItemClick(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    if-nez v2, :cond_0

    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mGridRemoteShareQuickConnect.onItemClick : mRemoteShareQuickConnectListAdapter is null, finish "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.sconnect.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "CATEGORY"

    const-string v3, "SEND_CONTENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ResolverActivity"

    const-string v3, "RemoteShareQuickConnectGridItemClick : Send content"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "CATEGORY"

    const-string v3, "MIRROR_SCREEN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ResolverActivity"

    const-string v3, "RemoteShareQuickConnectGridItemClick : MIRROR_SCREEN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_2
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "CATEGORY"

    const-string v3, "PRINT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ResolverActivity"

    const-string v3, "RemoteShareQuickConnectGridItemClick : CATEGORY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private RemoteShareRecentHistoryDefaultGridItemClick(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-nez v1, :cond_0

    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "mGridRemoteShareRecentHistoryDefault.onItemClick : mRemoteShareRecentHistoryDefaultListAdapter is null, finish "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.orca.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fromOOBE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "agreeMarketing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    const-string v2, "com.sec.orca.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "ResolverActivity"

    const-string v2, "RemoteShareRecentHistoryDefaultGridItemClick : Trying to Easy Sign-up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private RemoteShareRecentHistoryGridItemClick(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-nez v2, :cond_1

    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mGridRemoteShareRecentHistory.onItemClick : mRemoteShareRecentHistoryListAdapter is null, finish "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.rshareshell.action.REQUESTSEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.rshareshell"

    const-string v3, "com.sec.rshareshell.RelayActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "recipientdataids"

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/internal/app/ResolverActivity;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V

    return-void
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/HorizontalListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    return-void
.end method

.method private addApplicationGridView(Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x102043f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackgroundNoSpace(Landroid/widget/TextView;)V

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x1020440

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    return-void
.end method

.method private addRemoteShareGridView(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040bdf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020438

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method private addRemoteShareQuickConnectGridView(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040be3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method private addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020439

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040bdf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method private addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040bdf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalListView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private applyRemoteShareResolver(Landroid/content/Intent;Z)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->checkThemeType(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090123

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addApplicationGridView(Landroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareGridView(Landroid/content/Intent;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareQuickConnectGridView(Landroid/content/Intent;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isEasySingUpIsCertificated()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryDefaultList()V

    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareList()V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareQuickConnectList()V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShare(I)V

    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridTitleApplication(I)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridQuickConnect(I)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefaultTitle(I)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryTitle(I)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    goto :goto_0
.end method

.method private checkThemeType(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearRemoteShareList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private clearRemoteShareQuickConnectList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private clearRemoteShareRecentHistoryDefaultList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private clearRemoteShareRecentHistoryList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private getRecentSharedContact()V
    .locals 18

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "recent_share"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "limit"

    const-string v5, "2"

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "display_name"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "photo_uri"

    aput-object v4, v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    const/16 v1, 0x4000

    new-array v10, v1, [B

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v13

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v13, v10}, Ljava/io/InputStream;->read([B)I

    move-result v17

    const/4 v1, -0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v10, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private initRemoteShareList()V
    .locals 12

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    if-nez v9, :cond_0

    const-string v9, "ResolverActivity"

    const-string v10, "initRemoteShareList : mRemoteShareListAdapter is null "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareList(Z)V

    :cond_1
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    invoke-direct {v5, p0, v4, v3, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    invoke-interface {v9, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080586

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    invoke-direct {v2, p0, v1, v0, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    invoke-interface {v9, v10, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v8, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    invoke-direct {v8, p0, v7, v6, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    invoke-interface {v9, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private initRemoteShareQuickConnectList()V
    .locals 12

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    if-nez v9, :cond_0

    const-string v9, "ResolverActivity"

    const-string v10, "initRemoteShareQuickConnectList : mRemoteShareQuickConnectListAdapter is null "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareQuickConnectList(Z)V

    :cond_1
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v8, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;

    invoke-direct {v8, p0, v7, v6, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    invoke-interface {v9, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;

    invoke-direct {v2, p0, v1, v0, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    invoke-interface {v9, v10, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;

    invoke-direct {v5, p0, v4, v3, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    invoke-interface {v9, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private initRemoteShareRecentHistoryDefaultList()V
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-nez v4, :cond_0

    const-string v4, "ResolverActivity"

    const-string v5, "initRemoteShareRecentHistoryDefaultList : mRemoteShareRecentHistoryDefaultListAdapter is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareRecentHistoryDefaultList(Z)V

    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040be7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080585

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040be8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private initRemoteShareRecentHistoryList()V
    .locals 14

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-nez v10, :cond_0

    const-string v10, "ResolverActivity"

    const-string v11, "initRemoteShareRecentHistoryList : mRemoteShareRecentHistoryListAdapter is null "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareRecentHistoryList(Z)V

    :cond_1
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040be8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080585

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v8, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v7, v6, v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    invoke-interface {v10, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    const/4 v9, 0x0

    :goto_1
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    if-ge v9, v10, :cond_7

    const/16 v10, 0x9

    if-ge v9, v10, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    aget v10, v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const v10, 0x1040be9

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    aget v12, v12, v9

    add-int/lit8 v12, v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    aget v10, v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    aget-wide v11, v11, v9

    const/4 v13, 0x1

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    aget v10, v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    invoke-direct {v5, p0, v3, v2, v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    invoke-interface {v10, v11, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    aget-wide v11, v11, v9

    const/4 v13, 0x0

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_5
    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/4 v10, 0x0

    invoke-direct {v5, p0, v3, v2, v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    if-nez v10, :cond_7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040be8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080585

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/4 v10, 0x0

    invoke-direct {v5, p0, v3, v2, v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    invoke-interface {v10, v11, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    :cond_7
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private isEasySingUpIsCertificated()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->isAuth(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    :cond_0
    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    return v0
.end method

.method private isEmergencyOrUPSModeEnabled()Z
    .locals 9

    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    const-string v4, "ResolverActivity"

    const-string v6, "isEmergencyOrUPSModeEnabled : mContext is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method private isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isIntentUriDataIValidCheck(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIntentUriDataIValidCheck(Landroid/content/Intent;)Z
    .locals 9

    const/4 v2, 0x1

    const-string v6, "ResolverActivity"

    const-string v7, "isIntentUriDataNotNullCheck"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-nez v4, :cond_1

    const-string v6, "ResolverActivity"

    const-string v7, "isIntentUriDataNotNullCheck: uri == null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v6, "com.android.contacts"

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "ResolverActivity"

    const-string v7, "isIntentUriDataNotNullCheck: com.android.contacts.equals(uri.getEncodedAuthority()) == TRUE "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIntentUriDataNotNullCheck, uriArray.size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v7, "com.android.contacts"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ResolverActivity"

    const-string v7, "isIntentUriDataNotNullCheck: com.android.contacts.equals(uriArray.get(i).getEncodedAuthority()) == TRUE "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uriArray.get(n) != null , n is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uriArray.get(n) == null , n is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isKnoxModeEnabled()Z
    .locals 3

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoteShareServiceDownloaded()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    :cond_0
    sget-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    return v1

    :cond_1
    sput-boolean v3, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    goto :goto_0
.end method

.method private isSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isKnoxModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isEmergencyOrUPSModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    :goto_0
    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    move v0, v1

    goto :goto_0
.end method

.method private isSupportRemoteShareFeature()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeatureChecked:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeature:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.remoteshare_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeature:Z

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeatureChecked:Z

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeature:Z

    goto :goto_0
.end method

.method private isSupportRemoteShareSettings()I
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "remote_share_show_options"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;
    .locals 18

    if-eqz p1, :cond_0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080581

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v14, 0x0

    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v9, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v7, v14, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v8, v7

    :goto_0
    return-object v8

    :cond_0
    if-nez p4, :cond_1

    const-string v14, "ResolverActivity"

    const-string/jumbo v15, "makeContactsThumbnailImage:  contactsThumbnailByteArray == null and isGroup==false, show default image"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080588

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x5

    int-to-long v14, v10

    rem-long v14, p2, v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    long-to-int v4, v14

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080581

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v14, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    packed-switch v4, :pswitch_data_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v9, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v7, v14, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v8, v7

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1060087

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1060088

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1060089

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106008a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106008b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const-string v14, "ResolverActivity"

    const-string/jumbo v15, "makeContactsThumbnailImage:  contactsThumbnailByteArray == null and isGroup==true, show group image"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080587

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080581

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v14, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v9, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v7, v14, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v8, v7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private registerRecentContactsReceiver()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.rshareshell.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private sendRequesRecentContactsHistoryList()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.rshareshell.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerRecentContactsReceiver()V

    const/4 v1, 0x1

    return v1
.end method

.method private setSubtitleBackground(Landroid/widget/TextView;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v4, :cond_0

    const v4, 0x1080c62

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_0
    const v4, 0x1080c61

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setSubtitleBackgroundNoSpace(Landroid/widget/TextView;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v4, :cond_0

    const v4, 0x1080c64

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :cond_0
    const v4, 0x1080c63

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setSubtitleColor(Landroid/widget/TextView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setVisibilityGridQuickConnect(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityGridRemoteShare(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020438

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistory(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistoryDefault(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistoryDefaultTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020439

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistoryTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityGridTitleApplication(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040b6f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget v4, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v4, "ResolverActivity"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "onActivityResult for sendRequesRecentContactsHistoryList : resultCode == Activity.RESULT_OK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    const-string v0, "ResolverActivity"

    const-string v1, "FAIL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    const v1, 0x10203b5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040689

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const v2, 0x1030349

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLaunchedFromPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046a

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v15, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v15, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    :goto_2
    const/16 v17, 0x0

    :try_start_2
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result v17

    :goto_3
    packed-switch v17, :pswitch_data_0

    :goto_4
    const/16 v16, 0x0

    :try_start_3
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5

    move-result v16

    :goto_5
    packed-switch v16, :pswitch_data_1

    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_7
    return-void

    :catch_0
    move-exception v14

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    :catch_1
    move-exception v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mLaunchedFromPackage=null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    goto/16 :goto_2

    :catch_2
    move-exception v14

    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(CONTENT_TYPE, TYPE_NONE), type Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_3
    move-exception v14

    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(CONTENT_TYPE, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    goto/16 :goto_4

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    goto/16 :goto_4

    :catch_4
    move-exception v14

    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_5
    move-exception v14

    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_2
    const v2, 0x1030349

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    :pswitch_3
    const v2, 0x1030348

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    :pswitch_4
    const v2, 0x1030349

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    :cond_3
    const/4 v2, 0x1

    if-le v13, v2, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->isSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isEasySingUpIsCertificated()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->applyRemoteShareResolver(Landroid/content/Intent;Z)V

    goto/16 :goto_7

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109011f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    :goto_8
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x10203b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    if-eqz p6, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_6

    const v2, 0x1040972

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x1040973

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    :cond_7
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    if-eqz p6, :cond_1

    const v2, 0x10202fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-nez v2, :cond_8

    if-nez v12, :cond_e

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getInitialHighlight()I

    move-result v5

    if-ltz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900ac

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto/16 :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090120

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    :goto_c
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x10203b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    goto/16 :goto_9

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900ad

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_c

    :cond_c
    const/4 v2, 0x1

    if-ne v13, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040692

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040693

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    goto/16 :goto_a

    :cond_e
    if-eqz v12, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x10203b5

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const v2, 0x10203b6

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    goto/16 :goto_b

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_d

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    const-string v2, "file"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_3
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v23

    if-eqz v23, :cond_5

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v29

    :cond_4
    if-eqz v29, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    if-eqz v11, :cond_7

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v25

    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v25, :cond_b

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v23

    if-eqz v23, :cond_9

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    :cond_8
    if-eqz v24, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_9
    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v28, v0

    const/4 v7, 0x0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v26, v0

    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v28, v17

    move-object/from16 v0, v26

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_a

    move-object/from16 v0, v26

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :catch_0
    move-exception v16

    const-string v2, "ResolverActivity"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_c
    if-eqz p3, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_d
    :goto_4
    if-eqz p2, :cond_f

    if-eqz p3, :cond_11

    :try_start_1
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v14, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v14, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.INTENT"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    if-nez v20, :cond_e

    new-instance v20, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    :cond_e
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->skipMultiWindowLaunch(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_f
    :goto_5
    return-void

    :cond_10
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v27

    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v16

    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v2, "ResolverActivity"

    const-string v3, "Class Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception v16

    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareGridItemClick(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v3, :cond_1

    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareRecentHistoryDefaultGridItemClick(I)V

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-ne p1, v3, :cond_2

    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareRecentHistoryGridItemClick(I)V

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v3, :cond_3

    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareQuickConnectGridItemClick(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    const/4 v1, 0x1

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_7

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v3, v0, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_5
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p3, v2}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "ResolverActivity"

    const-string/jumbo v1, "onPause registered unreceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 4

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->isSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareList()V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareQuickConnectList()V

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V

    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShare(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "ResolverActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerRecentContactsReceiver()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "personal_mode_enabled"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    goto :goto_0
.end method

.method resizeGrid()V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/GridView;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startSelected(IZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
