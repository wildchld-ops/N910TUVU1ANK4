.class public Lcom/android/mms/saverestore/SavedMsgsList;
.super Landroid/app/ListActivity;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;,
        Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;,
        Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;,
        Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;
    }
.end annotation


# static fields
.field private static final CHECK_FOR_DUPLICATES:I = 0x3

.field private static final DELETE_CONFIRMATION_DIALOG:I = 0xf

.field private static final INVALID_CHAR:[Ljava/lang/String;

.field private static final INVALID_NAME_OPERATION:I = 0xe

.field private static final MAX_LENGTH:I = 0x32

.field public static final MAX_PATH_LENGTH:I = 0xfa

.field public static final MENU_HOME:I = 0x10

.field public static final MENU_UP:I = 0xf

.field private static final OPEN_OPERATION:I = 0xc

.field private static final PASSWORD_DIALOG:I = 0x7

.field private static final RENAME_DIALOG:I = 0x4

.field private static final RENAME_OPERATION:I = 0xd

.field private static final RESTORE_OPERATION:I = 0xb

.field private static final SAME_NAME_DIALOG:I = 0x5

.field private static final SAVE_OK_ERROR_DIALOG:I = 0x6

.field private static final SAVE_OPERATION:I = 0xa

.field private static final SMS_TO_SAVE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "Mms/SavedMsgsList"


# instance fields
.field private ROOT_DIRECTORY:Ljava/lang/String;

.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/saverestore/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private convAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private convFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private dir:Ljava/io/File;

.field private fileList:Landroid/widget/ListView;

.field private filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mButtons:Landroid/view/View;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurrentFilePath:Ljava/io/File;

.field private mDefaultDirName:Ljava/lang/String;

.field public mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEditFileName:Landroid/widget/EditText;

.field private mEditNewFileName:Landroid/widget/EditText;

.field private mEmptyBackgroundImage:Landroid/widget/ImageView;

.field private mEmptyList:Landroid/view/View;

.field private mFilesSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mIds:[J

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInput:Landroid/view/View;

.field private mItemSelectedIndex:I

.field private mMenuHome:Landroid/view/MenuItem;

.field private mMenuUp:Landroid/view/MenuItem;

.field mModeCallback:Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;

.field private mMsgsRestoreActionMode:Landroid/view/ActionMode;

.field private mMultiMode:Z

.field private mNoSdCard:Z

.field private mOkRenameBtn:Landroid/widget/Button;

.field private mOkSaveBtn:Landroid/widget/Button;

.field private mOperation:I

.field private mQueryHandler:Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;

.field private mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

.field mRenameAltDialog:Landroid/app/AlertDialog;

.field private mSaveBtn:Landroid/widget/Button;

.field private mSaveError:Z

.field private mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

.field private mSdCardReceiver:Landroid/content/BroadcastReceiver;

.field private mSubTitleImageView:Landroid/widget/ImageView;

.field private mSubTitleTextView:Landroid/widget/TextView;

.field private mTempFilesSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/android/mms/saverestore/SavedMsgsList;->INVALID_CHAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    iput v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I

    iput-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    iput-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mNoSdCard:Z

    const-string v0, "/Messaging/"

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mDefaultDirName:Ljava/lang/String;

    const-string v0, "/storage"

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->ROOT_DIRECTORY:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleImageView:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mModeCallback:Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;

    iput-boolean v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMultiMode:Z

    iput-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    new-instance v0, Lcom/android/mms/saverestore/SavedMsgsList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/SavedMsgsList$1;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/saverestore/SavedMsgsList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/SavedMsgsList$2;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/mms/saverestore/SavedMsgsList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/SavedMsgsList$3;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/saverestore/SavedMsgsList;)[J
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->getIds()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/saverestore/SavedMsgsList;)Lcom/android/mms/saverestore/SaveRestoreOperation;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/saverestore/SavedMsgsList;)I
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mOperation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/saverestore/SavedMsgsList;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SavedMsgsList;->renameFile(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/io/File;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Ljava/io/File;

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/saverestore/SavedMsgsList;)Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/saverestore/SavedMsgsList;)V
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/mms/saverestore/SavedMsgsList;)I
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/saverestore/SavedMsgsList;I)I
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/MenuItem;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/MenuItem;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/mms/saverestore/SavedMsgsList;I)V
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SavedMsgsList;->setOperation(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/saverestore/SavedMsgsList;I)V
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SavedMsgsList;->checkIfEncrypted(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/saverestore/SavedMsgsList;)Z
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->selectionHasFolder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/mms/saverestore/SavedMsgsList;Z)Z
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SavedMsgsList;->fileAlreadyExists(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/saverestore/SavedMsgsList;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mNoSdCard:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/saverestore/SavedMsgsList;I)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SavedMsgsList;->constructFileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->array:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->array:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/util/ArrayList;Z)Z
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Ljava/util/ArrayList;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/mms/saverestore/SavedMsgsList;->isMultipleConversations(Ljava/util/ArrayList;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3402(Lcom/android/mms/saverestore/SavedMsgsList;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveError:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/mms/saverestore/SavedMsgsList;)V
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->setSavePanelInvisible()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Landroid/widget/Toast;

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3700()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/saverestore/SavedMsgsList;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/saverestore/SavedMsgsList;)V
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->refreshList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mOkRenameBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/saverestore/SavedMsgsList;)Z
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;

    iget-boolean v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMultiMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/mms/saverestore/SavedMsgsList;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/saverestore/SavedMsgsList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMultiMode:Z

    return p1
.end method

.method private checkIfEncrypted(I)V
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    new-instance v0, Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;Lcom/android/mms/saverestore/SavedMsgsList$1;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

.method private constructFileName(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fileAlreadyExists(Z)Z
    .locals 5
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fillConvFiles()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    new-instance v2, Lcom/android/mms/saverestore/SavedMsgsList$5;

    invoke-direct {v2, p0}, Lcom/android/mms/saverestore/SavedMsgsList$5;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 9
    .param p0    # Ljava/io/File;

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v7, 0x0

    :goto_0
    return-wide v7

    :cond_0
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->getFolderSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_2

    :cond_3
    move-wide v7, v5

    goto :goto_0
.end method

.method private getIds()[J
    .locals 4

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->array:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->array:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const v2, 0x7f0c037d

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->array:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/saverestore/SavedMsgsList;->isMultipleConversations(Ljava/util/ArrayList;Z)Z

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getOperation()I
    .locals 1

    iget v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mOperation:I

    return v0
.end method

.method private handleListItemClick(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/saverestore/SavedMsgsList;->checkIfEncrypted(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->refreshList()V

    goto :goto_0
.end method

.method private isMultipleConversations(Ljava/util/ArrayList;Z)Z
    .locals 5
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/saverestore/SavedSmsMessage;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, ""

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    if-nez v1, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v2, 0x1

    :cond_4
    :goto_2
    if-eqz v2, :cond_7

    if-nez p2, :cond_7

    :cond_5
    return v2

    :cond_6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v3}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private refreshList()V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->fillConvFiles()V

    new-instance v1, Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->updateEmptyView()V

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->updateSubHeaderView()V

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I

    :cond_2
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private renameFile(Z)V
    .locals 5
    .param p1    # Z

    new-instance v1, Ljava/io/File;

    iget v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I

    invoke-direct {p0, v2}, Lcom/android/mms/saverestore/SavedMsgsList;->constructFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->dir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->fillConvFiles()V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const v2, 0x7f0c037c

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private selectionHasFolder()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setOperation(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mOperation:I

    return-void
.end method

.method private setSavePanelInvisible()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mInput:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startProperActivity(I)V
    .locals 4
    .param p1    # I

    new-instance v0, Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;Lcom/android/mms/saverestore/SavedMsgsList$1;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateEmptyView()V
    .locals 4

    const/16 v3, 0x8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEmptyList:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v3, 0x7f0202a6

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEmptyList:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateSubHeaderView()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "updateSubHeaderView got null reference, return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extSdCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public ShowRenameDialog()V
    .locals 9

    const/4 v8, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04008c

    const v4, 0x7f0b0315

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mItemSelectedIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0b0317

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, p0, v5}, Lcom/android/mms/saverestore/SavedMsgsList;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    const v5, 0x84001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    const v4, 0x7f0c004d

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$12;

    invoke-direct {v5, p0}, Lcom/android/mms/saverestore/SavedMsgsList$12;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c004e

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$13;

    invoke-direct {v5, p0}, Lcom/android/mms/saverestore/SavedMsgsList$13;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0379

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mRenameAltDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mOkSaveBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mOkSaveBtn:Landroid/widget/Button;

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$14;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/saverestore/SavedMsgsList$14;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public checkForValidFileName()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public formatDate(JLandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # J
    .param p3    # Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatSize(J)Ljava/lang/String;
    .locals 11
    .param p1    # J

    const-wide/16 v9, 0x1

    const/high16 v8, 0x42c80000

    const-wide/high16 v6, 0x4059000000000000L

    const-string v0, ""

    const-wide/16 v3, 0x400

    div-long v3, p1, v3

    cmp-long v3, v3, v9

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/32 v3, 0x100000

    div-long v3, p1, v3

    cmp-long v3, v3, v9

    if-gez v3, :cond_1

    long-to-float v3, p1

    const/high16 v4, 0x44800000

    div-float v1, v3, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-double v4, v1

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    long-to-float v3, p1

    const/high16 v4, 0x49800000

    div-float v2, v3, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-double v4, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Mb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # I

    move v1, p2

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/mms/saverestore/SavedMsgsList$15;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/mms/saverestore/SavedMsgsList$15;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;ILandroid/content/Context;)V

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/android/mms/saverestore/SavedMsgsList$16;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/saverestore/SavedMsgsList$16;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/content/Context;)V

    aput-object v3, v0, v2

    return-object v0
.end method

.method public handleHomeKey()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->refreshList()V

    return-void
.end method

.method public handleUpKey()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->refreshList()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public init(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;Lcom/android/mms/saverestore/SavedMsgsList$1;)V

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mModeCallback:Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mModeCallback:Lcom/android/mms/saverestore/SavedMsgsList$ModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/saverestore/SavedMsgsList$4;

    invoke-direct {v2, p0}, Lcom/android/mms/saverestore/SavedMsgsList$4;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

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

    const v1, 0x7f0b0325

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEmptyList:Landroid/view/View;

    const v1, 0x7f0b032c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mInput:Landroid/view/View;

    const v1, 0x7f0b032d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mButtons:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mInput:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mButtons:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b0330

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, 0x7f0b0331

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b032f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->constructDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/mms/saverestore/SavedMsgsList;->setOperation(I)V

    invoke-virtual {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->checkForValidFileName()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/saverestore/SavedMsgsList;->fileAlreadyExists(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mQueryHandler:Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mIds:[J

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_threadId"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_2
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "Rename file"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/mms/saverestore/SavedMsgsList;->fileAlreadyExists(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/mms/saverestore/SavedMsgsList;->renameFile(Z)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    goto :goto_0

    :sswitch_3
    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "Cancel file"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0319 -> :sswitch_2
        0x7f0b031a -> :sswitch_3
        0x7f0b0330 -> :sswitch_0
        0x7f0b0331 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/SavedMsgsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->updateEmptyView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "Mms/SavedMsgsList"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f040092

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iput-object p0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/saverestore/SaveRestoreOperation;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/saverestore/SavedMsgsList;->init(Z)V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->fileList:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    const v2, 0x7f0b032b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f0b032a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSubTitleImageView:Landroid/widget/ImageView;

    const v2, 0x7f0b0159

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v2, 0x7f0b0327

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v2, 0x7f0b000a

    invoke-static {v2}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    new-instance v2, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mQueryHandler:Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ids"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mIds:[J

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mDefaultDirName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->dir:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mDefaultDirName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mInflater:Landroid/view/LayoutInflater;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->fillConvFiles()V

    new-instance v2, Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    invoke-virtual {p0, v2}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->updateEmptyView()V

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->updateSubHeaderView()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1    # I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const v4, 0x7f0c0379

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0141

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c00ef

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$6;

    invoke-direct {v5, p0}, Lcom/android/mms/saverestore/SavedMsgsList$6;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c00f0

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$7;

    invoke-direct {v5, p0}, Lcom/android/mms/saverestore/SavedMsgsList$7;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-boolean v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveError:Z

    if-eqz v4, :cond_0

    const v3, 0x7f0c0186

    :goto_1
    iget-boolean v4, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveError:Z

    if-eqz v4, :cond_1

    const v2, 0x7f0c037e

    :goto_2
    const v4, 0x108009b

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c00ee

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$8;

    invoke-direct {v5, p0}, Lcom/android/mms/saverestore/SavedMsgsList$8;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v3, 0x7f0c0382

    goto :goto_1

    :cond_1
    const v2, 0x7f0c0380

    goto :goto_2

    :sswitch_2
    const v4, 0x7f0c0388

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0389

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c004d

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$9;

    invoke-direct {v5, p0}, Lcom/android/mms/saverestore/SavedMsgsList$9;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v4, 0x7f0c0076

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0078

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0183

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$10;

    invoke-direct {v5, p0}, Lcom/android/mms/saverestore/SavedMsgsList$10;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0182

    new-instance v5, Lcom/android/mms/saverestore/SavedMsgsList$11;

    invoke-direct {v5, p0}, Lcom/android/mms/saverestore/SavedMsgsList$11;-><init>(Lcom/android/mms/saverestore/SavedMsgsList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "OnDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->convAddresses:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->array:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->array:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->OnDestroy()V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    :cond_4
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;

    :cond_6
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mReadFileTask:Lcom/android/mms/saverestore/SavedMsgsList$ReadFilesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_7
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_8
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/mms/saverestore/SavedMsgsList;->setOperation(I)V

    invoke-direct {p0, p3}, Lcom/android/mms/saverestore/SavedMsgsList;->handleListItemClick(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v2, "Mms/SavedMsgsList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->handleUpKey()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->handleHomeKey()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/Menu;

    const/4 v3, 0x6

    const/4 v2, 0x0

    const-string v0, "Mms/SavedMsgsList"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/16 v0, 0x10

    const v1, 0x7f0c0396

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuHome:Landroid/view/MenuItem;

    const v1, 0x7f0b000b

    invoke-static {v1}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xf

    const v1, 0x7f0c0397

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList;->mMenuUp:Landroid/view/MenuItem;

    const v1, 0x7f0b000c

    invoke-static {v1}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/android/mms/saverestore/SavedMsgsList;->refreshList()V

    return-void
.end method
