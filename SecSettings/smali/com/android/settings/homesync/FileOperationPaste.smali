.class public abstract Lcom/android/settings/homesync/FileOperationPaste;
.super Lcom/android/settings/homesync/FileOperation;
.source "FileOperationPaste.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;,
        Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;,
        Lcom/android/settings/homesync/FileOperationPaste$PasteType;,
        Lcom/android/settings/homesync/FileOperationPaste$RequestType;
    }
.end annotation


# static fields
.field private static mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;


# instance fields
.field protected context:Landroid/app/Activity;

.field private mAccountName:Ljava/lang/String;

.field private mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentCopiedSize:J

.field private mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

.field private mPasteType:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

.field mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

.field public mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mTotalCount:I

.field private mTotalPercentage:I

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->None:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Ljava/util/ArrayList;Lcom/android/settings/homesync/FileOperationPaste$PasteType;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
    .param p2    # Lcom/android/settings/homesync/FileOperationProgress;
    .param p4    # Lcom/android/settings/homesync/FileOperationPaste$PasteType;
    .param p5    # Lcom/android/settings/homesync/FileOperationPaste$RequestType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/settings/homesync/FileOperationProgress;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;",
            ">;",
            "Lcom/android/settings/homesync/FileOperationPaste$PasteType;",
            "Lcom/android/settings/homesync/FileOperationPaste$RequestType;",
            ")V"
        }
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p5}, Lcom/android/settings/homesync/FileOperation;-><init>(Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mFileList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/settings/homesync/FileOperationPaste;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v2, Lcom/android/settings/homesync/FileOperationPaste$PasteType;->SkipAll:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    iput-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    iput-wide v5, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    iput-wide v5, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    iput v4, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    iput v4, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalCount:I

    iput-object v3, p0, Lcom/android/settings/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    new-instance v2, Lcom/android/settings/homesync/FileOperationPaste$1;

    invoke-direct {v2, p0}, Lcom/android/settings/homesync/FileOperationPaste$1;-><init>(Lcom/android/settings/homesync/FileOperationPaste;)V

    iput-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mStorageListener:Landroid/os/storage/StorageEventListener;

    new-instance v2, Lcom/android/settings/homesync/FileOperationPaste$2;

    invoke-direct {v2, p0}, Lcom/android/settings/homesync/FileOperationPaste$2;-><init>(Lcom/android/settings/homesync/FileOperationPaste;)V

    iput-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    iput-object v3, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    new-instance v2, Lcom/android/settings/homesync/FileOperationPaste$5;

    invoke-direct {v2, p0}, Lcom/android/settings/homesync/FileOperationPaste$5;-><init>(Lcom/android/settings/homesync/FileOperationPaste;)V

    iput-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.spc.service.SpcBackupService.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    iput-object p3, p0, Lcom/android/settings/homesync/FileOperationPaste;->mFolderList:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/android/settings/homesync/FileOperation;->mErrMaxFilePath:Z

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    iput-object p4, p0, Lcom/android/settings/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    sput-object p5, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    const-string v2, "storage"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method private CopyFile(Ljava/io/File;Ljava/io/File;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)Z
    .locals 39
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;
    .param p3    # Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v30, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-object v3, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->FlatAndPrivate:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_2

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/homesync/FileOperationPaste;->CopyFileForPrivate(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToEncrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_3

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/homesync/FileOperationPaste;->CopyFileWithEncryption(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToDecrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_4

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/homesync/FileOperationPaste;->CopyFileWithDecryption(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "HomeSyncFileOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CopyFile dst.mkdirs() failed~!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-wide v34

    const-wide/16 v3, 0x0

    cmp-long v3, v34, v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    if-eqz v30, :cond_7

    :try_start_1
    throw v30
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    if-eqz v37, :cond_0

    :try_start_2
    throw v37
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    if-eqz v37, :cond_0

    :try_start_3
    throw v37
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v37, :cond_8

    :try_start_4
    throw v37
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_8
    :goto_2
    throw v3

    :cond_9
    :try_start_5
    new-instance v31, Ljava/io/FileInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/16 v3, 0x2000

    :try_start_7
    new-array v0, v3, [B

    move-object/from16 v28, v0

    const-wide/16 v32, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-nez v3, :cond_a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v14, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v14}, Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    :cond_a
    :goto_3
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v29

    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v3, :cond_10

    if-eqz v31, :cond_b

    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V

    :cond_b
    if-eqz v38, :cond_c

    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :cond_c
    const/4 v3, 0x0

    if-eqz v31, :cond_d

    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_d
    if-eqz v38, :cond_e

    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    :cond_e
    :goto_4
    move-object/from16 v37, v38

    move-object/from16 v30, v31

    goto/16 :goto_0

    :catch_3
    move-exception v4

    if-eqz v38, :cond_e

    :try_start_a
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    goto :goto_4

    :catchall_1
    move-exception v3

    if-eqz v38, :cond_f

    :try_start_b
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :cond_f
    :goto_5
    throw v3

    :cond_10
    const/4 v3, 0x0

    :try_start_c
    move-object/from16 v0, v38

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move/from16 v0, v29

    int-to-long v5, v0

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v3, 0x2000

    mul-long v3, v3, v32

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    div-long/2addr v3, v5

    long-to-int v0, v3

    move/from16 v36, v0

    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_12

    const/4 v14, 0x0

    move/from16 v27, v36

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    const-wide/16 v3, 0xa

    rem-long v3, v32, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    const/4 v14, 0x1

    :cond_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x2000

    mul-long v8, v8, v32

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long v8, v8, v34

    long-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v14}, Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    :cond_12
    const-wide/16 v3, 0x1

    add-long v32, v32, v3

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v3, 0x2000

    mul-long v3, v3, v32

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    div-long v3, v3, v34

    long-to-int v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v26}, Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    :cond_14
    invoke-virtual/range {v38 .. v38}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v31, :cond_15

    :try_start_d
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_15
    if-eqz v38, :cond_16

    :try_start_e
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :cond_16
    :goto_6
    move-object/from16 v37, v38

    move-object/from16 v30, v31

    goto/16 :goto_1

    :catch_5
    move-exception v3

    if-eqz v38, :cond_16

    :try_start_f
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    goto :goto_6

    :catchall_2
    move-exception v3

    if-eqz v38, :cond_17

    :try_start_10
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_17
    :goto_7
    throw v3

    :catchall_3
    move-exception v3

    :goto_8
    if-eqz v30, :cond_18

    :try_start_11
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :cond_18
    if-eqz v37, :cond_19

    :try_start_12
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    :cond_19
    :goto_9
    throw v3

    :catch_7
    move-exception v4

    if-eqz v37, :cond_19

    :try_start_13
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto :goto_9

    :catch_8
    move-exception v4

    goto :goto_9

    :catchall_4
    move-exception v3

    if-eqz v37, :cond_1a

    :try_start_14
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    :cond_1a
    :goto_a
    throw v3

    :catch_9
    move-exception v4

    goto/16 :goto_2

    :catch_a
    move-exception v4

    goto/16 :goto_4

    :catch_b
    move-exception v4

    goto/16 :goto_5

    :catch_c
    move-exception v3

    goto :goto_6

    :catch_d
    move-exception v4

    goto :goto_7

    :catch_e
    move-exception v4

    goto :goto_9

    :catch_f
    move-exception v4

    goto :goto_a

    :catchall_5
    move-exception v3

    move-object/from16 v30, v31

    goto :goto_8

    :catchall_6
    move-exception v3

    move-object/from16 v37, v38

    move-object/from16 v30, v31

    goto :goto_8
.end method

.method private CopyFileForPrivate(Ljava/io/File;Ljava/io/File;)Z
    .locals 15
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;

    iget-boolean v0, p0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v13, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/spc/service/ISpcBackupService;->copyFileForPrivate(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    add-long/2addr v0, v13

    iput-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    iget-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    iget-wide v7, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    iget-wide v9, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v11, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    iput-object v12, p0, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CopyFileWithDecryption(Ljava/io/File;Ljava/io/File;)Z
    .locals 15
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;

    iget-boolean v0, p0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v13, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/spc/service/ISpcBackupService;->copyFileWithDecryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    add-long/2addr v0, v13

    iput-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    iget-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    iget-wide v7, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    iget-wide v9, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v11, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    iput-object v12, p0, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CopyFileWithEncryption(Ljava/io/File;Ljava/io/File;)Z
    .locals 15
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;

    iget-boolean v0, p0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v13, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/spc/service/ISpcBackupService;->copyFileWithEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    iget-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    iget-wide v7, p0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    iget-wide v9, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v11, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    iput-object v12, p0, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/homesync/FileOperationPaste;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/FileOperationPaste;

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkDestStorageSpace(J)Z
    .locals 5
    .param p1    # J

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    const-string v4, "/secdata"

    invoke-interface {v3, v4}, Lcom/sec/android/spc/service/ISpcBackupService;->getFreeSpace(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    const-wide/32 v3, 0x7d000

    add-long/2addr v3, p1

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    sget-object v3, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private gather(Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;Ljava/util/ArrayList;)J
    .locals 11
    .param p1    # Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v7, 0x0

    iget-boolean v9, p0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v9, :cond_0

    const-wide/16 v9, -0x1

    :goto_0
    return-wide v9

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/io/File;

    iget-object v9, p1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v9, p1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    iget v9, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalCount:I

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    new-instance v2, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    invoke-direct {v2}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    iput-object v9, v2, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-direct {p0, v2, p2}, Lcom/android/settings/homesync/FileOperationPaste;->gather(Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;Ljava/util/ArrayList;)J

    move-result-wide v9

    add-long/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-wide v9, v7

    goto/16 :goto_0
.end method

.method public static getRequestType()Lcom/android/settings/homesync/FileOperationPaste$RequestType;
    .locals 1

    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    return-object v0
.end method

.method private prepareDestPathForPrivate(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    invoke-direct {v0}, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;-><init>()V

    iput-object v1, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepareFileOperation()Z
    .locals 11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    const-wide/16 v9, 0x0

    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v0, v1, :cond_0

    iget-object v0, v8, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mFileList:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v0}, Lcom/android/settings/homesync/FileOperationPaste;->gather(Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;Ljava/util/ArrayList;)J

    move-result-wide v9

    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    iget-object v1, v8, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/sec/android/spc/service/ISpcBackupService;->gatherFiles(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, v8, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    iget-object v5, p0, Lcom/android/settings/homesync/FileOperationPaste;->mFileList:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/homesync/FileOperationPaste;->prepareDestPathForPrivate(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v6, p0, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    goto :goto_1

    :cond_4
    const-string v0, "HomeSyncFileOperation"

    const-string v1, "prepareFileOperation: mISpcBackupService is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalCount:I

    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method createCancelDialog()Landroid/app/AlertDialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09181d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090cd7

    new-instance v3, Lcom/android/settings/homesync/FileOperationPaste$4;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/FileOperationPaste$4;-><init>(Lcom/android/settings/homesync/FileOperationPaste;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901ba

    new-instance v3, Lcom/android/settings/homesync/FileOperationPaste$3;

    invoke-direct {v3, p0}, Lcom/android/settings/homesync/FileOperationPaste$3;-><init>(Lcom/android/settings/homesync/FileOperationPaste;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected doFileOperation()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-nez v3, :cond_1

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-nez v3, :cond_1

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-nez v3, :cond_1

    const-string v3, "HomeSyncFileOperation"

    const-string v4, "Can not connect to SpcBackupService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/homesync/FileOperationPaste;->prepareFileOperation()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-eqz v3, :cond_9

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    sget-object v3, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v3, v4, :cond_4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    const-string v6, "file://storage/emulated/0"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    sget-object v3, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v3, v4, :cond_6

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->FlatAndPrivate:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    if-eq v3, v4, :cond_7

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToEncrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    if-ne v3, v4, :cond_6

    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    invoke-interface {v3}, Lcom/sec/android/spc/service/ISpcBackupService;->syncDatabase()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/homesync/FileOperationPaste;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    goto/16 :goto_0

    :cond_9
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    const/16 v22, 0x0

    sget-object v3, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v3, v4, :cond_a

    const v22, 0x7f091833

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalCount:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v14, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v14}, Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/settings/homesync/StorageUtil;->doesFileExist(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v3, v0, v1}, Lcom/android/settings/homesync/StorageUtil;->isSameFile(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v15, 0x1

    const-string v3, "HomeSyncFileOperation"

    const-string v4, "doFileOperation: Skip CopyFile (Reason: same file)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-nez v15, :cond_e

    sget-object v3, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v3, v4, :cond_e

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/settings/homesync/FileOperationPaste;->checkDestStorageSpace(J)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->StorageFull:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    goto/16 :goto_1

    :cond_a
    const v22, 0x7f091834

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/settings/homesync/StorageUtil;->doesFileExist(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/settings/homesync/FileOperationPaste;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$PasteType;->SkipAll:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mPasteType:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$PasteType;->SelectNewer:Lcom/android/settings/homesync/FileOperationPaste$PasteType;

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v3, v0, v1}, Lcom/android/settings/homesync/StorageUtil;->isNewerFile(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    const/4 v15, 0x1

    const-string v3, "HomeSyncFileOperation"

    const-string v4, "doFileOperation: Skip CopyFile (Reason: skip all or newer file )"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    const/4 v15, 0x0

    goto :goto_4

    :cond_e
    if-nez v15, :cond_11

    :try_start_1
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/homesync/FileOperationPaste;->CopyFile(Ljava/io/File;Ljava/io/File;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v23

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    if-eqz v3, :cond_12

    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    :catch_0
    move-exception v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    sget-object v3, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_11
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalPercentage:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/homesync/FileOperationPaste;->mCurrentCopiedSize:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    const/4 v14, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v14}, Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    goto :goto_5

    :cond_12
    if-nez v23, :cond_2

    sget-object v3, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->ExceptionOccurred:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    goto/16 :goto_1

    :catch_1
    move-exception v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homesync/FileOperationPaste;->mTotalSize:J

    return-wide v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationPaste;->mAccountName:Ljava/lang/String;

    return-void
.end method
