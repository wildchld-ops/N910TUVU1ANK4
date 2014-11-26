.class public Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.super Landroid/app/Activity;
.source "MessageDatabaseBackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;,
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;,
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    }
.end annotation


# static fields
.field private static final BACKUP_FILE_NAME_PREFIX:Ljava/lang/String; = "MMS_BACKUP_"

.field private static final BACKUP_FILE_PATH:Ljava/lang/String;

.field private static final BACKUP_MSG_DATA_PATH:Ljava/lang/String; = "/data/data/com.android.mms/"

.field private static final BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;

.field private static final BACKUP_TEMP_RESULT_DATA_FOLDER_PREFIX:Ljava/lang/String; = ".MMS_BACKUP_"

.field private static final BACKUP_TEMP_RESULT_ZIP_FOLDER_NAME:Ljava/lang/String;

.field private static final BTN_NAME_BACKUP:Ljava/lang/String; = "1. MESSAGE DB BACKUP"

.field private static final BTN_NAME_CHANGE_APN:Ljava/lang/String; = "MESSAGE APN CHANGE"

.field private static final BTN_NAME_CMAS_Test_OFF:Ljava/lang/String; = "CMAS Test Mode"

.field private static final BTN_NAME_RESTORE:Ljava/lang/String; = "2. MEESSAGE DB RESTORE"

.field private static final BUFFER_SIZE:I = 0x2800

.field private static final CHK_NAME_DBRESTORE:Ljava/lang/String; = "DB Restore"

.field private static final CHK_NAME_ENABLE_CRYPTO_KEY:Ljava/lang/String; = "Enable cryptography key"

.field private static final EXT_MSG:Ljava/lang/String; = ".edb"

.field private static final EXT_ZIP:Ljava/lang/String; = ".zip"

.field private static final FLAG_DB_BACKUP_COMPLETE:I = 0x1

.field private static final FLAG_DB_BACKUP_START:I = 0x0

.field private static final FLAG_DB_RESTORE_COMPLETE:I = 0x3

.field private static final FLAG_DB_RESTORE_START:I = 0x2

.field private static INPUT_CRYPTO_KEY_LENGTH:I = 0x0

.field private static final RET_VALUE_FALSE:I = 0x0

.field private static final RET_VALUE_TRUE:I = 0x1

.field private static final SDCARD_DIR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MessageDatabaseBackupActivity"

.field private static final WORKTHREAD_MODE_BACKUP:I = 0x0

.field private static final WORKTHREAD_MODE_RESTORE:I = 0x1

.field private static mszCryptoKey_32Byte:Ljava/lang/String;

.field private static mszCryptoKey_Input:Ljava/lang/String;


# instance fields
.field public CMASTestchangeButton:Landroid/widget/Button;

.field public mAdapterPathName:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mArrayPathName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDlgProg:Landroid/app/ProgressDialog;

.field private mEventHandler:Landroid/os/Handler;

.field public mListView:Landroid/widget/ListView;

.field public mTempPathName:Ljava/lang/String;

.field public mTextviewBackupFileName:Landroid/widget/TextView;

.field public mTextviewRestoreFileName:Landroid/widget/TextView;

.field private mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->SDCARD_DIR:Ljava/lang/String;

    sget-object v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->SDCARD_DIR:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MMS_BACKUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".MMS_BACKUP_ZIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_TEMP_RESULT_ZIP_FOLDER_NAME:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->INPUT_CRYPTO_KEY_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageDatabaseBackupActivity;
    .param p1    # Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_TEMP_RESULT_ZIP_FOLDER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->INPUT_CRYPTO_KEY_LENGTH:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->startBackup()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->startRestore()V

    return-void
.end method

.method private checkExternalStorage()Z
    .locals 7

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v5, "mounted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "External Storage mount error!!"

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget-object v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_2
    sget-object v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_TEMP_RESULT_ZIP_FOLDER_NAME:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method private createEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private make32byteKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;

    const/16 v3, 0x20

    const-string v1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "0"

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetDirectory()V
    .locals 9

    const-string v6, "MessageDatabaseBackupActivity"

    const-string v7, "resetDirectory()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->SDCARD_DIR:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_0

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".MMS_BACKUP_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v0, v3

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->DeleteDir(Ljava/io/File;)Z

    const-string v6, "MessageDatabaseBackupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteDir::children[i]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is Delete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v6, "MessageDatabaseBackupActivity"

    const-string v7, "deleteDir::"

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showCryptoDialog(I)V
    .locals 3
    .param p1    # I

    new-instance v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoKeyDialog;->setData(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "cryptokey_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startBackup()V
    .locals 7

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    const-string v5, "message backup starting"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "yyMMdd_hhmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS_BACKUP_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".MMS_BACKUP_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTempPathName:Ljava/lang/String;

    new-instance v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, p0, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_Input:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->make32byteKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_32Byte:Ljava/lang/String;

    const-string v4, "MessageDatabaseBackupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "32byte:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_32Byte:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_32Byte:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v1, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private startRestore()V
    .locals 7

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    if-gez v0, :cond_1

    const-string v4, "Select the file in restore list"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    const-string v5, "message restore starting"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, ".edb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, p0, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_Input:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->make32byteKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_32Byte:Ljava/lang/String;

    const-string v4, "MessageDatabaseBackupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "32byte:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_32Byte:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_32Byte:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v1, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public DeleteDir(Ljava/io/File;)Z
    .locals 9
    .param p1    # Ljava/io/File;

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v6, "MessageDatabaseBackupActivity"

    const-string v7, "deleteDir::children is null"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v3, 0x0

    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_2

    new-instance v6, Ljava/io/File;

    aget-object v7, v1, v3

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->DeleteDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v6, "MessageDatabaseBackupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteDir::children[nI]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is Delete"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    move v5, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "MessageDatabaseBackupActivity"

    const-string v6, "deleteDir::"

    invoke-static {v5, v6, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public initRestoreList()V
    .locals 8

    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0b0201

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->clear()V

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".edb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x109000f

    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1    # Landroid/view/View;

    const v11, 0x7f0b01fc

    const v10, 0x7f0b01f9

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b01ff

    if-ne v7, v8, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->checkExternalStorage()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "External Storage mount failed"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->showCryptoDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b0202

    if-ne v7, v8, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->checkExternalStorage()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "External Storage mount failed"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v5

    if-gez v5, :cond_4

    const-string v7, "Select the file in restore list"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->showCryptoDialog(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v11, :cond_6

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setApnOnOff(Landroid/content/Context;Z)V

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->setApnOnOff(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v10, :cond_0

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCMASTestOnOff(Landroid/content/Context;Z)V

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setCmasTestOnOff(Z)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v9}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v11, "MessageDatabaseBackupActivity"

    const-string v12, "onCreate()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v11, 0x7f040067

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    const v11, 0x7f0b01ff

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v11, 0x7f0b0202

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v11, "1. MESSAGE DB BACKUP"

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v11, "2. MEESSAGE DB RESTORE"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0b0203

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v11, "DB Restore"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0b01f8

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v11, "CMAS Test Mode"

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0b01f9

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCMASTestOnOff(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    const v11, 0x7f0b01f7

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    const v11, 0x7f0b01fa

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    sget-boolean v11, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v11, :cond_0

    const v11, 0x7f0b01fb

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v11, 0x7f0b01fc

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    const-string v11, "MESSAGE APN CHANGE"

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApnOnOff(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v11, 0x7f0b0200

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    const v11, 0x7f0b0205

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    const v11, 0x7f0b0207

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->createEventHandler()Landroid/os/Handler;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->resetDirectory()V

    const-string v11, ""

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->setCryptoKey(Ljava/lang/String;)V

    const-string v11, ""

    invoke-direct {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->make32byteKey(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v2, "MessageDatabaseBackupActivity"

    const-string v3, "onDestory()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTempPathName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTempPathName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->DeleteDir(Ljava/io/File;)Z

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BACKUP_TEMP_RESULT_ZIP_FOLDER_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->DeleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "MessageDatabaseBackupActivity"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "MessageDatabaseBackupActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->initRestoreList()V

    return-void
.end method

.method public setCryptoKey(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const v1, 0x7f0b01fd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sput-object p1, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mszCryptoKey_Input:Ljava/lang/String;

    return-void
.end method
