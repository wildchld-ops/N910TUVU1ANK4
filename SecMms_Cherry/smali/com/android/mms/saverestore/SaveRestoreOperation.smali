.class public Lcom/android/mms/saverestore/SaveRestoreOperation;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;,
        Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;,
        Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;,
        Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;
    }
.end annotation


# static fields
.field private static final ALL_SMS_TO_SAVE:I = 0x1

.field private static final ANY_MMS_IN_SELECTION:I = 0x2

.field private static final ANY_SMS_PRESENT:I = 0x7

.field private static final CANONICALADDRESS_PROJECTION:[Ljava/lang/String;

.field private static final CHECK_FOR_DUPLICATES:I = 0x3

.field private static final INVALID_CHAR:[Ljava/lang/String;

.field private static final MAX_LENGTH:I = 0x32

.field public static final MAX_PATH_LENGTH:I = 0xfa

.field private static final RESTORE_ERROR:I = 0x5

.field private static final RESTORE_SUCCESS:I = 0x4

.field private static final SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms/SaveRestoreOperation"

.field private static final THREAD_RECIPIENTID_PROJECTION:[Ljava/lang/String;

.field private static final USER_CANCELLED:I = 0x6

.field private static sAllCanonical:Landroid/net/Uri;

.field public static final sAllThreadsUri:Landroid/net/Uri;


# instance fields
.field private MAX_MESSAGES_PER_FILE:I

.field private SaveRestoreDestroyed:Z

.field private mActivity:Landroid/app/Activity;

.field mAltDialog:Landroid/app/AlertDialog;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/saverestore/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFileCount:I

.field private mHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;

.field private mIsThreadId:Z

.field mNoSdCard:Z

.field private mOkSaveBtn:Landroid/widget/Button;

.field private mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

.field mRestoreTask:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

.field private mRestoreThread:Ljava/lang/Thread;

.field private mSDcardFolderName:Ljava/lang/String;

.field private mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

.field private mSdCardReceiver:Landroid/content/BroadcastReceiver;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToast:Landroid/widget/Toast;

.field mfileNameTextView:Landroid/widget/EditText;

.field public nonSmsItemSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, ":"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->sAllCanonical:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->sAllThreadsUri:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "recipient_ids"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->THREAD_RECIPIENTID_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->CANONICALADDRESS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mNoSdCard:Z

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mRestoreThread:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mRestoreTask:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    const-string v1, "/Messaging/"

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    iput v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mFileCount:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->nonSmsItemSelected:Z

    new-instance v1, Lcom/android/mms/saverestore/SaveRestoreOperation$10;

    invoke-direct {v1, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$10;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/android/mms/saverestore/SaveRestoreOperation$11;

    invoke-direct {v1, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$11;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mNoSdCard:Z

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mRestoreThread:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mRestoreTask:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    const-string v1, "/Messaging/"

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    iput v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mFileCount:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->nonSmsItemSelected:Z

    new-instance v1, Lcom/android/mms/saverestore/SaveRestoreOperation$10;

    invoke-direct {v1, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$10;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/android/mms/saverestore/SaveRestoreOperation$11;

    invoke-direct {v1, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$11;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/saverestore/SaveRestoreOperation;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/saverestore/SaveRestoreOperation;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/saverestore/SaveRestoreOperation;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->showErrorSuccessRestoreDialog(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/saverestore/SaveRestoreOperation;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->fileAlreadyExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/saverestore/SaveRestoreOperation;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/saverestore/SaveRestoreOperation;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mFileCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/saverestore/SaveRestoreOperation;[JZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->checkIfMmsInSelection([JZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/saverestore/SaveRestoreOperation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->showNoSmsSelectedDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/saverestore/SaveRestoreOperation;[J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->showMmsSelectedDialog([J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/saverestore/SaveRestoreOperation;[JZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->showSavedMsgsListDialog([JZ)V

    return-void
.end method

.method private checkIfAnySmsPresent([JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    return-void
.end method

.method private checkIfMmsInSelection([JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryHaveMmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    return-void
.end method

.method private checkIfSmsSelected([JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    return-void
.end method

.method private constructDefaultName()Ljava/lang/String;
    .locals 4

    const-string v1, "yyyyMMddHHmmss"

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private fileAlreadyExists(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private showErrorSuccessRestoreDialog(II)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00ee

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation$4;

    invoke-direct {v2, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$4;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showMmsSelectedDialog([J)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0306

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0375

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ee

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation$3;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$3;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;[J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004e

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation$2;

    invoke-direct {v2, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$2;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showNoSmsSelectedDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c038a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0384

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ee

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation$1;

    invoke-direct {v2, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$1;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showSavedMsgsListDialog([JZ)V
    .locals 6

    const/4 v3, 0x1

    iget v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mFileCount:I

    if-le v1, v3, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0306

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c038f

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mFileCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00ee

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation$5;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$5;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;[J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z

    invoke-virtual {p0, p1, v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V

    goto :goto_0
.end method

.method private writeFile(Ljava/io/File;[BI)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public OnDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mRestoreTask:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mRestoreTask:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    return-void
.end method

.method public declared-synchronized SetOnSaveCompleteListener(Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkForDuplicates([J)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mQueryHandler:Lcom/android/mms/saverestore/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    return-void
.end method

.method public deleteAnonymousThread()V
    .locals 14

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-string v11, "address is NULL"

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/saverestore/SaveRestoreOperation;->SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v4, "address is NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    const/4 v10, 0x0

    :try_start_1
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/saverestore/SaveRestoreOperation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/saverestore/SaveRestoreOperation;->THREAD_RECIPIENTID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "recipient_ids"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "Found an anonymous draft..delete it"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const-string v0, "Mms/SaveRestoreOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uri of draft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v13, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    :cond_2
    if-eqz v10, :cond_3

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v8, :cond_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation$12;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$12;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/content/Context;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation$13;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$13;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/content/Context;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation$14;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$14;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/content/Context;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public isDialogStillShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreSmsFromSdCard()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    if-nez v0, :cond_0

    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "starting DownloadFilesTask"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Lcom/android/mms/saverestore/SaveRestoreOperation$1;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mRestoreTask:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mRestoreTask:Lcom/android/mms/saverestore/SaveRestoreOperation$DownloadFilesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public saveSmsToSdCard(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 13

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v11, "unmounted"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "removed"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "mounted_ro"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const-string v11, "Mms/SaveRestoreOperation"

    const-string v12, "SDcard not present, cannot proceed with save"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    :goto_0
    return v7

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    iget v12, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    div-int v5, v11, v12

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x1

    if-ne v5, v11, :cond_3

    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v3, v11}, Lcom/android/mms/saverestore/SaveRestoreOperation;->writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V

    const/4 v6, 0x1

    move-object v2, v3

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object v3, v2

    :goto_2
    if-ge v4, v5, :cond_6

    const/4 v10, 0x1

    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    if-eqz v4, :cond_4

    iget v11, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    mul-int/2addr v11, v4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    :cond_4
    if-eqz v10, :cond_5

    const/4 v11, 0x1

    invoke-virtual {p0, p1, v2, v11}, Lcom/android/mms/saverestore/SaveRestoreOperation;->writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-object v3, v2

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method public showSaveFileNameDialog([JZ)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->isDialogStillShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Mms/SaveRestoreOperation"

    const-string v6, " Dialog is already showing..do not display another one"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c038a

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f04008c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0b0316

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const v5, 0x7f0c0399

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v5, 0x7f0b0317

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->constructDefaultName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v6, v4}, Lcom/android/mms/saverestore/SaveRestoreOperation;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    const v6, 0x84001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    const-string v6, "inputType=PredictionOff;inputType=filename;disableEmoticonInput=true"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_2
    const v5, 0x7f0c004d

    new-instance v6, Lcom/android/mms/saverestore/SaveRestoreOperation$6;

    invoke-direct {v6, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$6;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0c004e

    new-instance v6, Lcom/android/mms/saverestore/SaveRestoreOperation$7;

    invoke-direct {v6, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$7;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/mms/saverestore/SaveRestoreOperation$8;

    invoke-direct {v6, p0}, Lcom/android/mms/saverestore/SaveRestoreOperation$8;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mOkSaveBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mOkSaveBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/saverestore/SaveRestoreOperation$9;

    invoke-direct {v6, p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation$9;-><init>(Lcom/android/mms/saverestore/SaveRestoreOperation;[J)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public startRestoreOperation(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/saverestore/SavedSmsMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v1}, Lcom/android/mms/saverestore/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms/SaveRestoreOperation"

    const-string v2, "Found an anonymous draft in the restore list...checking for existing one"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->deleteAnonymousThread()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startSaveOperation([JZZ)V
    .locals 1

    iput-boolean p2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->showNoSmsSelectedDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->checkIfAnySmsPresent([JZ)V

    goto :goto_0

    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->showMmsSelectedDialog([J)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V

    goto :goto_0
.end method

.method public writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V
    .locals 24

    const/4 v15, 0x0

    const-wide/16 v22, 0x1

    const-wide/16 v16, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v20

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "ver"

    const-string v4, "2"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v2, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const-string v2, "Mms/SaveRestoreOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***Starting new ThreadId value is:***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "thread"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "n"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string v2, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    cmp-long v2, v16, v22

    if-eqz v2, :cond_4

    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "***break, create a new thread layout***"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    const/4 v2, 0x0

    const-string v3, "thread"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    if-lt v15, v2, :cond_10

    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "***break, for the outer while loop***"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_2

    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    move-object v13, v14

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v2, 0x0

    :try_start_3
    const-string v3, "message"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "type"

    const-string v4, "SMS"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    const-string v3, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v10, 0x0

    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/saverestore/SaveRestoreOperation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/saverestore/SaveRestoreOperation;->THREAD_RECIPIENTID_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "Query for recipient id returned a match for thread id..extract the recipient id from cursor"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "recipient_ids"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/saverestore/SaveRestoreOperation;->sAllCanonical:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/saverestore/SaveRestoreOperation;->CANONICALADDRESS_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "address"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "Mms/SaveRestoreOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found a match in canonical table - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "canonical_address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "canonical_address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_6
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v12

    move-object v13, v14

    :goto_5
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v13, :cond_3

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    :try_start_8
    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "recipient_id is empty..this is an anonymous draft"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :cond_9
    if-eqz v10, :cond_a

    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_a
    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_6
    const/4 v2, 0x0

    const-string v3, "body"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "body"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_e

    const-string v2, "UTF-8"

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_7
    const/4 v2, 0x0

    const-string v3, "body"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "date"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "date"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "date"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "read"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "read"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "read"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "locked"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "locked"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "locked"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "message"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v15, 0x1

    if-eqz p3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    if-lt v15, v2, :cond_f

    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "***break, for the inner while loop****"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catch_2
    move-exception v12

    move-object v13, v14

    :goto_8
    :try_start_a
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v13, :cond_3

    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_c
    :try_start_c
    const-string v2, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    const-string v3, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    move-object v13, v14

    :goto_9
    if-eqz v13, :cond_d

    :try_start_d
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_d
    :goto_a
    throw v2

    :cond_e
    :try_start_e
    const-string v2, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_7

    :cond_f
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_10
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :catch_4
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v13, v14

    goto/16 :goto_2

    :catch_5
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :catchall_2
    move-exception v2

    goto :goto_9

    :catch_6
    move-exception v12

    goto :goto_8

    :catch_7
    move-exception v12

    goto/16 :goto_5
.end method
