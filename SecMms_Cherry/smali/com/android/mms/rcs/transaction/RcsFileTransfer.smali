.class public Lcom/android/mms/rcs/transaction/RcsFileTransfer;
.super Ljava/lang/Object;
.source "RcsFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupDismissListener;,
        Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupCancelListener;,
        Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupListener;,
        Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;
    }
.end annotation


# static fields
.field private static final IMAGE_QUALITY_FACTOR_DEFAULT:I = 0x5f

.field private static final TAG:Ljava/lang/String; = "Mms/FileTransfer"

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private final IMAGE_RESIZE_OPTION_BY_LAGE:I

.field private final IMAGE_RESIZE_OPTION_BY_MEDIUM:I

.field private final IMAGE_RESIZE_OPTION_BY_ORIGINAL:I

.field private final IMAGE_RESIZE_OPTION_BY_SMALL:I

.field private final MAX_IMAGE_HEIGHT_WIDTH:I

.field private mAttachErrorDialog:Landroid/app/AlertDialog;

.field private mAttachmentProgressDialog:Landroid/app/ProgressDialog;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContext:Landroid/content/Context;

.field private mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectedResizeType:I

.field private mThreadId:J

.field private mVcfFileAndSendTask:Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;

.field private recipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->IMAGE_RESIZE_OPTION_BY_ORIGINAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->IMAGE_RESIZE_OPTION_BY_LAGE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->IMAGE_RESIZE_OPTION_BY_MEDIUM:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->IMAGE_RESIZE_OPTION_BY_SMALL:I

    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->MAX_IMAGE_HEIGHT_WIDTH:I

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mThreadId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->IMAGE_RESIZE_OPTION_BY_ORIGINAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->IMAGE_RESIZE_OPTION_BY_LAGE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->IMAGE_RESIZE_OPTION_BY_MEDIUM:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->IMAGE_RESIZE_OPTION_BY_SMALL:I

    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->MAX_IMAGE_HEIGHT_WIDTH:I

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mThreadId:J

    iput-object p4, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->recipients:Ljava/util/ArrayList;

    return-void
.end method

.method private ImageResize(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    if-nez v10, :cond_0

    new-instance v10, Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    iget-object v10, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v12, 0x7f0c017f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    sget-object v11, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v10, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    :cond_0
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;

    invoke-direct {v11, p0, v7, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;ILjava/util/ArrayList;)V

    const-string v12, "addAttachment"

    invoke-direct {v10, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v10, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v0, v9, v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getResizedImageUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-ne v7, v4, :cond_4

    const-string v10, "Mms/FileTransfer"

    const-string v11, "sendFiles, files resized"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->newImageFileBackupAsyncTask()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/HashMap;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->recipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)I
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/rcs/transaction/RcsFileTransfer;I)I
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/rcs/transaction/RcsFileTransfer;[Ljava/lang/String;I)V
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # [Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->savePreferences([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/util/ArrayList;)V
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->ImageResize(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getResizedImageUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)J
    .locals 2
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-wide v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->validateImageFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->validateFiles()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/rcs/transaction/RcsFileTransfer;[Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/RcsFileTransfer;
    .param p1    # [Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->createAndWriteContacts([Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static cleanUpTempDirectory()Z
    .locals 4

    const-string v0, "/Android/data/com.samsung.rcs/tmp_images/"

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/com.samsung.rcs/tmp_images/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private createAndWriteContacts([Landroid/net/Uri;)Landroid/net/Uri;
    .locals 23
    .param p1    # [Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v20, 0x0

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v13, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_display_name"

    aput-object v6, v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/Application/joyn/Contacts"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->createDirIfNotExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v16, 0x0

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".vcf"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".vcf"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_1
    new-instance v19, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v19, :cond_4

    new-instance v19, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/contacts_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".vcf"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    :cond_6
    new-instance v21, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v9, p1

    :try_start_2
    array-length v15, v9

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_8

    aget-object v18, v9, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->writeContactToStream(Ljava/io/OutputStream;Landroid/net/Uri;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    :cond_8
    if-eqz v21, :cond_9

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_9
    move-object/from16 v20, v21

    :cond_a
    :goto_2
    const-string v4, "Mms/FileTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createAndWriteContacts final : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string v4, "Mms/FileTransfer"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v4, v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v20, v21

    goto :goto_2

    :catch_1
    move-exception v12

    :goto_3
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v4, "Mms/FileTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v20, :cond_a

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v12

    const-string v4, "Mms/FileTransfer"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v4, v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v4

    :goto_4
    if-eqz v20, :cond_b

    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_b
    :goto_5
    throw v4

    :catch_3
    move-exception v12

    const-string v6, "Mms/FileTransfer"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_2
    move-exception v4

    move-object/from16 v20, v21

    goto :goto_4

    :catch_4
    move-exception v12

    move-object/from16 v20, v21

    goto :goto_3
.end method

.method private createImageResizeDialog(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v9, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080042

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    :goto_0
    array-length v9, v6

    if-ge v1, v9, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "(50%)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    if-ne v1, v9, :cond_2

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "(20%)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 v9, 0x3

    if-ne v1, v9, :cond_0

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "(10%)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move-object v8, v6

    iget-object v9, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->getSelectedImageSizeIndexByPref(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v9, 0x7f040063

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v9, 0x7f0b01d1

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->getRcsEnabledImageSizeAsk(Landroid/content/Context;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0c0516

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v9, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    if-gez v9, :cond_4

    const/4 v9, 0x0

    :goto_2
    new-instance v10, Lcom/android/mms/rcs/transaction/RcsFileTransfer$7;

    invoke-direct {v10, p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$7;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    invoke-virtual {v0, v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    new-instance v10, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;

    invoke-direct {v10, p0, v5, v8, p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Landroid/widget/CheckBox;[Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/mms/rcs/transaction/RcsFileTransfer$9;

    invoke-direct {v10, p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$9;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/android/mms/rcs/transaction/RcsFileTransfer$10;

    invoke-direct {v9, p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$10;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_4
    iget v9, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    goto :goto_2
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 3
    .param p0    # Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->deleteDirectory(Ljava/io/File;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static exifOrientationToDegrees(I)F
    .locals 1
    .param p0    # I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/high16 v0, 0x42b40000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/high16 v0, 0x43340000

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const/high16 v0, 0x43870000

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getResizedImageUri(Ljava/lang/String;II)Landroid/net/Uri;
    .locals 19
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v9, 0x0

    mul-int/lit8 v13, p2, 0x1

    mul-int/lit8 v2, p3, 0x1

    mul-int/lit8 v15, p2, 0x3

    div-int/lit8 v11, v15, 0x4

    mul-int/lit8 v15, p3, 0x3

    div-int/lit8 v6, v15, 0x4

    div-int/lit8 v12, p2, 0x2

    div-int/lit8 v7, p3, 0x2

    div-int/lit8 v14, p2, 0x4

    div-int/lit8 v8, p3, 0x4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "ATT"

    const-string v16, "TMO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/mms/rcs/transaction/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-lez v15, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->resizeImageLargeFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    :goto_0
    move-object v10, v9

    :goto_1
    return-object v10

    :cond_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v2, v15}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    :cond_1
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSelectedImageSizeIndexByPref(Landroid/content/Context;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    packed-switch v15, :pswitch_data_0

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    :goto_3
    move-object v10, v9

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->getSelectedImageSizeIndexByPref(Landroid/content/Context;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    goto :goto_2

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/android/mms/rcs/transaction/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v15

    cmp-long v15, v4, v15

    if-lez v15, :cond_5

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v2, v15}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    :cond_6
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v6, v15}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v7, v15}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v8, v15}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v9

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 11
    .param p0    # Landroid/net/Uri;
    .param p1    # Landroid/content/Context;

    const/4 v8, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz p0, :cond_1

    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v10, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->exifOrientationToDegrees(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    float-to-int v8, v0

    goto :goto_0

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;
    .locals 19
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v10

    int-to-float v4, v10

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, p2

    int-to-float v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p3

    int-to-float v5, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    const-string v4, "Mms/FileTransfer"

    const-string v5, "imageResizeByResolution() resize done!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v18, :cond_7

    :try_start_1
    new-instance v14, Ljava/io/File;

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->resizeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v15, 0x0

    :try_start_2
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v16, :cond_6

    const/16 v17, 0x64

    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v17, 0x5f

    :cond_5
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    :cond_6
    const-string v4, "Mms/FileTransfer"

    const-string v5, "imageResizeByResolution() restore done!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v16, :cond_7

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v15, 0x0

    :cond_7
    :goto_2
    if-eqz v14, :cond_c

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    :catch_0
    move-exception v11

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_8
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v18, 0x0

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v13}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->imageResizeBySampleSize(ILjava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v18

    goto :goto_1

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v11

    :goto_3
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v15, :cond_a

    :try_start_6
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    :goto_4
    if-eqz v15, :cond_7

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v15, 0x0

    goto :goto_2

    :catch_4
    move-exception v12

    :try_start_8
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v15, :cond_b

    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v15, 0x0

    :cond_b
    :goto_6
    throw v4

    :catch_5
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_6
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_c
    const-string v4, "Mms/FileTransfer"

    const-string v5, "imageResizeByResolution() file = null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    move-object/from16 v15, v16

    goto :goto_5

    :catch_7
    move-exception v11

    move-object/from16 v15, v16

    goto :goto_3
.end method

.method private imageResizeBySampleSize(ILjava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/io/File;

    const/4 v10, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    :try_start_0
    iput v1, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    invoke-static {p2, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v7

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x4

    iput v1, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "Mms/FileTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageResizeByResolution() resize error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const/16 v1, 0x8

    :try_start_1
    iput v1, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_3
    const-string v1, "Mms/FileTransfer"

    const-string v2, "imageResizeByResolution() resize error = "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v10

    goto :goto_1
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0    # Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShowImageSizeEnabled()Z
    .locals 2

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabledValue(Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method private preValidateFiles()V
    .locals 2

    const-string v0, "Mms/FileTransfer"

    const-string v1, "preValidateFiles: Validate added files"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/mms/rcs/transaction/Utils;->getPathsFromUris(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->resizeImageAndValidateFiles()V

    return-void
.end method

.method private resizeFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1    # Ljava/lang/String;

    const-string v15, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const-string v15, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const-string v1, "/Android/data/com.samsung.rcs/tmp_images/"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/Android/data/com.samsung.rcs/tmp_images/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_resized"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".nomedia"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    const-string v15, "Mms/FileTransfer"

    const-string v16, "imageResizeByResolution, created .nomedia file"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v8, v8, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_resized_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v15, "Mms/FileTransfer"

    const-string v16, "imageResizeByResolution, cannot create .nomedia file"

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v11
.end method

.method private resizeImageAndValidateFiles()V
    .locals 6

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/rcs/transaction/Utils;->isResizableImageFormat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "Mms/FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageReszieAndValidateFiles: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file(s) needs to resize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->getRcsEnabledImageSizeAsk(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->recipients:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->ImageResize(Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->createImageResizeDialog(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->newImageFileBackupAsyncTask()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->newImageFileBackupAsyncTask()V

    goto :goto_1
.end method

.method private savePreferences([Ljava/lang/String;I)V
    .locals 3
    .param p1    # [Ljava/lang/String;
    .param p2    # I

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pref_key_rcs_ft_show_image_size_dialog"

    aget-object v2, p1, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private showErorDialogOnUiThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$11;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validateFiles()V
    .locals 26

    const-wide/16 v22, 0x0

    const/4 v4, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c002e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/rcs/transaction/Utils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/rcs/transaction/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12}, Lcom/android/mms/rcs/RcsMimeTypeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v18, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0x14

    if-le v2, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0507

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v24, 0x14

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->showErorDialogOnUiThread(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-eqz v18, :cond_5

    const-string v2, "application/vnd.oma.drm.content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0508

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v5

    const-wide/16 v24, 0x0

    cmp-long v2, v5, v24

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v5

    cmp-long v2, v13, v5

    if-lez v2, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0509

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_3

    :cond_7
    invoke-static {v13, v14}, Lcom/android/mms/rcs/Configuration$Ft;->isWarnSizeTresholdExceeded(J)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0406

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c015a

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c00ee

    new-instance v5, Lcom/android/mms/rcs/transaction/RcsFileTransfer$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$5;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    invoke-virtual {v8, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0183

    new-instance v5, Lcom/android/mms/rcs/transaction/RcsFileTransfer$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$6;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    invoke-virtual {v8, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_8
    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00fa

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0134

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_9
    add-long v22, v22, v13

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupListener;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V

    new-instance v6, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupCancelListener;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V

    new-instance v7, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupDismissListener;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mAttachErrorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v15, :cond_d

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->recipients:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->recipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->recipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/mms/rcs/RcsChatManager;->generateImsUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->attachFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4

    :cond_f
    sget-object v2, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v19

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2
.end method

.method private validateImageFile(Ljava/lang/String;)V
    .locals 16
    .param p1    # Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v12, 0x7f0c002e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/rcs/transaction/Utils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/rcs/transaction/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/android/mms/rcs/RcsMimeTypeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v11

    if-eqz v11, :cond_0

    if-nez v7, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "application/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0x14

    if-le v11, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0507

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/16 v15, 0x14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    :goto_0
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->showErorDialogOnUiThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz v7, :cond_4

    const-string v11, "application/vnd.oma.drm.content"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0508

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v11

    cmp-long v11, v4, v11

    if-lez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0509

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_5
    invoke-static {v4, v5}, Lcom/android/mms/rcs/Configuration$Ft;->isWarnSizeTresholdExceeded(J)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0c0406

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c015a

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c00ee

    new-instance v12, Lcom/android/mms/rcs/transaction/RcsFileTransfer$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$3;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0c0183

    new-instance v12, Lcom/android/mms/rcs/transaction/RcsFileTransfer$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$4;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_6
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v12, 0x7f0c00fa

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0134

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_7
    sget-object v11, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;

    if-eqz v11, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/4 v11, 0x0

    iput v11, v8, Landroid/os/Message;->what:I

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v11, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method private writeContactToStream(Ljava/io/OutputStream;Landroid/net/Uri;)Z
    .locals 10
    .param p1    # Ljava/io/OutputStream;
    .param p2    # Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v1

    const/16 v8, 0x400

    if-le v1, v8, :cond_0

    const/16 v1, 0x400

    :cond_0
    new-array v2, v1, [B

    :cond_1
    :goto_0
    array-length v8, v2

    sub-int/2addr v8, v5

    invoke-virtual {v6, v2, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return v7

    :catch_0
    move-exception v3

    const-string v8, "Mms/FileTransfer"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    add-int/2addr v5, v0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v1

    array-length v8, v2

    sub-int/2addr v8, v5

    if-le v1, v8, :cond_1

    add-int v8, v5, v1

    new-array v4, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v4

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_3
    const-string v8, "Mms/FileTransfer"

    const-string v9, "IOException caught while opening or reading stream"

    invoke-static {v8, v9, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v8, "Mms/FileTransfer"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_2
    throw v7

    :catch_3
    move-exception v3

    const-string v8, "Mms/FileTransfer"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public VcfFileAndSendTask(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;

    if-eqz p1, :cond_0

    const-string v1, "Mms/FileTransfer"

    const-string v2, "postFileSelector: Bundle has VCF information"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Lcom/android/mms/rcs/transaction/RcsFileTransfer$1;)V

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mVcfFileAndSendTask:Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mVcfFileAndSendTask:Lcom/android/mms/rcs/transaction/RcsFileTransfer$MakeVcfFileAndSend;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public createDirIfNotExists(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mms/FileTransfer"

    const-string v3, "Failed to make directory..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public hasParticipantsInChat(Ljava/util/ArrayList;[Ljava/lang/String;)Z
    .locals 5
    .param p2    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected newImageFileBackupAsyncTask()V
    .locals 2

    const-string v0, "Mms/FileTransfer"

    const-string v1, "newImageFileBackupAsyncTask: AsyncTask will be performed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer$2;-><init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public postFileSelector(Landroid/content/Intent;)V
    .locals 11
    .param p1    # Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v8, "Mms/FileTransfer"

    const-string v9, "postFileSelector: Bundle has no information(null)"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "results"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "results"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v8, "Mms/FileTransfer"

    const-string v9, "postFileSelector: uris == null"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v7

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v6, v0, v4

    if-nez v6, :cond_4

    const-string v8, "Mms/FileTransfer"

    const-string v9, "postFileSelector: uri == null"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/rcs/transaction/Utils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v8, "Mms/FileTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postFileSelector: Selected file has been added to the list(totally "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " files)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->preValidateFiles()V

    goto/16 :goto_0
.end method

.method public removeActualParticipants(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p2    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public resizeImageLargeFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 26
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v21, 0x1

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const-string v4, "Mms/FileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bitmap image size : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " x "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v13, 0x3f800000

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/16 v4, 0x12c0

    if-gt v6, v4, :cond_2

    const/16 v4, 0x12c0

    if-le v7, v4, :cond_4

    :cond_2
    :goto_2
    int-to-float v4, v6

    mul-float/2addr v4, v13

    const/high16 v5, 0x45960000

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    int-to-float v4, v7

    mul-float/2addr v4, v13

    const/high16 v5, 0x45960000

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    :cond_3
    const v4, 0x3f733333

    mul-float/2addr v13, v4

    goto :goto_2

    :catch_0
    move-exception v11

    const-string v4, "Mms/FileTransfer"

    const-string v5, "OutOfMemoryError, decodeFile"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {v8, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v10

    int-to-float v4, v10

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v20, 0x0

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    :try_start_1
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    const-string v4, "Mms/FileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resized bitmap size ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ") : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " x "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    if-eqz v20, :cond_5

    new-instance v15, Ljava/io/File;

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->resizeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x64

    :try_start_2
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v23, v22

    :goto_4
    :try_start_3
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v4, "Mms/FileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after compressing stream.size() = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", quality ="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v24

    cmp-long v4, v4, v24

    if-gez v4, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v18, :cond_6

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    :goto_6
    if-eqz v15, :cond_a

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    :catch_1
    move-exception v11

    const-string v4, "Mms/FileTransfer"

    const-string v5, "OutOfMemoryError, createBitmap"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x3f733333

    mul-float/2addr v13, v4

    goto/16 :goto_3

    :catch_2
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    move-object/from16 v17, v18

    goto :goto_5

    :catch_3
    move-exception v11

    :goto_7
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v17, :cond_7

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_7
    :goto_8
    if-eqz v17, :cond_8

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const/16 v17, 0x0

    :cond_8
    :goto_9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :catch_4
    move-exception v12

    :try_start_9
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v4

    :goto_a
    if-eqz v17, :cond_9

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    const/16 v17, 0x0

    :cond_9
    :goto_b
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    throw v4

    :catch_5
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :catch_6
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :cond_a
    const-string v4, "Mms/FileTransfer"

    const-string v5, "imageResizeByResolution() file = null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    move-object/from16 v22, v23

    move-object/from16 v17, v18

    goto :goto_a

    :catchall_2
    move-exception v4

    move-object/from16 v17, v18

    goto :goto_a

    :catch_7
    move-exception v11

    move-object/from16 v22, v23

    move-object/from16 v17, v18

    goto :goto_7

    :catch_8
    move-exception v11

    move-object/from16 v17, v18

    goto :goto_7

    :cond_b
    move-object/from16 v23, v22

    goto/16 :goto_4
.end method

.method public setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    sput-object p1, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mHandler:Landroid/os/Handler;

    return-void
.end method
