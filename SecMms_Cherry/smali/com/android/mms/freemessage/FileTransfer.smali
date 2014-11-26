.class public Lcom/android/mms/freemessage/FileTransfer;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupDismissListener;,
        Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupCancelListener;,
        Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupListener;,
        Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;
    }
.end annotation


# static fields
.field private static final COMPLETED:I = 0x3e8

.field private static final OPEN_SESSIONS_LIMIT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "Mms/FileTransfer"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field protected static mNativeAccessReturnValue:I

.field private static mThreadId:J


# instance fields
.field private final VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

.field private final VIDEO_RESIZE_LIB_ERROR_VALUE:I

.field private final VIDEO_RESIZE_MAX_SIZE:I

.field private final VIDEO_RESIZE_OUTPUT_HEIGHT:I

.field private final VIDEO_RESIZE_OUTPUT_WIDTH:I

.field private mAttachErrorDialog:Landroid/app/AlertDialog;

.field private mAttachmentProgressDialog:Landroid/app/ProgressDialog;

.field private final mCompleteResizeHandler:Landroid/os/Handler;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

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

.field private mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

.field private mOutFileSizeEstimated:I

.field private mVcfFileAndSendTask:Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;

.field private mVideoResizeCanceled:Z

.field private mVideoResizeDialog:Landroid/app/AlertDialog;

.field private mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

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

.field private resizeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccessReturnValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # J

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    const/16 v0, 0x140

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_OUTPUT_WIDTH:I

    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_OUTPUT_HEIGHT:I

    const/high16 v0, 0x300000

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_MAX_SIZE:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

    iput v1, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_LIB_ERROR_VALUE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I

    iput-boolean v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeCanceled:Z

    iput v1, p0, Lcom/android/mms/freemessage/FileTransfer;->resizeCount:I

    new-instance v0, Lcom/android/mms/freemessage/FileTransfer$10;

    invoke-direct {v0, p0}, Lcom/android/mms/freemessage/FileTransfer$10;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mCompleteResizeHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    sput-wide p2, Lcom/android/mms/freemessage/FileTransfer;->mThreadId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 2
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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    const/16 v0, 0x140

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_OUTPUT_WIDTH:I

    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_OUTPUT_HEIGHT:I

    const/high16 v0, 0x300000

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_MAX_SIZE:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

    iput v1, p0, Lcom/android/mms/freemessage/FileTransfer;->VIDEO_RESIZE_LIB_ERROR_VALUE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I

    iput-boolean v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeCanceled:Z

    iput v1, p0, Lcom/android/mms/freemessage/FileTransfer;->resizeCount:I

    new-instance v0, Lcom/android/mms/freemessage/FileTransfer$10;

    invoke-direct {v0, p0}, Lcom/android/mms/freemessage/FileTransfer$10;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mCompleteResizeHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    sput-wide p2, Lcom/android/mms/freemessage/FileTransfer;->mThreadId:J

    iput-object p4, p0, Lcom/android/mms/freemessage/FileTransfer;->recipients:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/freemessage/FileTransfer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;
    .param p1    # Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/HashMap;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->recipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/freemessage/FileTransfer;)Lcom/samsung/app/share/via/external/NativeAccess;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/freemessage/FileTransfer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;
    .param p1    # Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/freemessage/FileTransfer;)V
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    invoke-direct {p0}, Lcom/android/mms/freemessage/FileTransfer;->showVideoResizingProgressDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/freemessage/FileTransfer;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;
    .param p1    # Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {p0, p1}, Lcom/android/mms/freemessage/FileTransfer;->nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/freemessage/FileTransfer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/freemessage/FileTransfer;->videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/mms/freemessage/FileTransfer;I)I
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/freemessage/FileTransfer;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mCompleteResizeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/freemessage/FileTransfer;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/mms/freemessage/FileTransfer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/freemessage/FileTransfer;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;
    .param p1    # Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/mms/freemessage/FileTransfer;->createAndWriteContacts(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/freemessage/FileTransfer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/mms/freemessage/FileTransfer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()J
    .locals 2

    sget-wide v0, Lcom/android/mms/freemessage/FileTransfer;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/mms/freemessage/FileTransfer;)V
    .locals 0
    .param p0    # Lcom/android/mms/freemessage/FileTransfer;

    invoke-direct {p0}, Lcom/android/mms/freemessage/FileTransfer;->validateFiles()V

    return-void
.end method

.method public static cleanUpTempDirectory()Z
    .locals 4

    const-string v0, "/Android/data/com.samsung.mms/tmp_images/"

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/com.samsung.mms/tmp_images/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/mms/freemessage/FileTransfer;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private createAndWriteContacts(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 19
    .param p1    # Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v12, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

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

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/freemessage/FileTransfer;->createDirIfNotExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".vcf"

    invoke-virtual {v14, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".vcf"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_1
    new-instance v15, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v15, :cond_4

    new-instance v15, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/contacts_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".vcf"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    :cond_6
    new-instance v17, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/freemessage/FileTransfer;->writeContactToStream(Ljava/io/OutputStream;Landroid/net/Uri;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v17, :cond_7

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_7
    move-object/from16 v16, v17

    :cond_8
    :goto_1
    const-string v4, "Mms/FileTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createAndWriteContacts final : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4

    :catch_0
    move-exception v11

    const-string v4, "Mms/FileTransfer"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v4, v6, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v16, v17

    goto :goto_1

    :catch_1
    move-exception v11

    :goto_2
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v4, "Mms/FileTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v16, :cond_8

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v11

    const-string v4, "Mms/FileTransfer"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v4, v6, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v16, :cond_9

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_4
    throw v4

    :catch_3
    move-exception v11

    const-string v6, "Mms/FileTransfer"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_2
    move-exception v4

    move-object/from16 v16, v17

    goto :goto_3

    :catch_4
    move-exception v11

    move-object/from16 v16, v17

    goto :goto_2
.end method

.method private createShareviaObj(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/app/share/via/external/ShareviaObj;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v0, 0x3

    new-instance v1, Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {v1}, Lcom/samsung/app/share/via/external/ShareviaObj;-><init>()V

    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaWidth(I)V

    const/16 v2, 0xf0

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaHeight(I)V

    invoke-virtual {v1, p2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaInputFilename(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFilename(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFileResolution(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaStartTime(I)V

    invoke-virtual {v1, p3}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaEndTime(I)V

    const/high16 v2, 0x300000

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViamaxDuration(I)V

    const/16 v2, 0xc00

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViamaxSize(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaVideoCodec(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaAudioCodec(I)V

    return-object v1
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

    invoke-static {v2}, Lcom/android/mms/freemessage/FileTransfer;->deleteDirectory(Ljava/io/File;)Z

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

.method public static getNextAvailableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0    # Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v7, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/mms/freemessage/FileTransfer;->mThreadId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%03d"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x3e7

    if-eq v3, v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x5f

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%03d"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private getOutputFileDurationPossible(Ljava/lang/String;)I
    .locals 6
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/app/share/via/external/NativeAccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/app/share/via/external/NativeAccess;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    :cond_0
    const/16 v2, 0xc00

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    const/16 v3, 0x140

    const/16 v4, 0xf0

    const/4 v5, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/share/via/external/NativeAccess;->getInputParamerterAnalysis(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 11
    .param p0    # Landroid/net/Uri;
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/mms/freemessage/FileTransfer;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "orientation"

    aput-object v1, v3, v0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

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

    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->exifOrientationToDegrees(I)F
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

.method private getVideoFileDurationTime(Ljava/lang/String;)I
    .locals 8
    .param p1    # Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    :cond_3
    :goto_1
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v1

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_4
    :goto_6
    throw v6

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_9
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_a
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private getVideoFileSize(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0
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

.method private isResizableImageFormat(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v3

    invoke-static {p1}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isResizableVideoFormat(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v3

    invoke-static {p1}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 1
    .param p1    # Lcom/samsung/app/share/via/external/ShareviaObj;

    new-instance v0, Lcom/android/mms/freemessage/FileTransfer$4;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/freemessage/FileTransfer$4;-><init>(Lcom/android/mms/freemessage/FileTransfer;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private preValidateFiles()V
    .locals 2

    const-string v0, "Mms/FileTransfer"

    const-string v1, "preValidateFiles: Validate added files"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/mms/freemessage/Utils;->getPathsFromUris(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/freemessage/FileTransfer;->validateFiles()V

    :cond_0
    return-void
.end method

.method private showVideoResizingDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/app/share/via/external/ShareviaObj;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v2, 0x7f0c0404

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v2, 0x7f0c0403

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0406

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0c040a

    new-instance v0, Lcom/android/mms/freemessage/FileTransfer$7;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/freemessage/FileTransfer$7;-><init>(Lcom/android/mms/freemessage/FileTransfer;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0c004e

    new-instance v1, Lcom/android/mms/freemessage/FileTransfer$8;

    invoke-direct {v1, p0}, Lcom/android/mms/freemessage/FileTransfer$8;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/freemessage/FileTransfer$9;

    invoke-direct {v1, p0}, Lcom/android/mms/freemessage/FileTransfer$9;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showVideoResizingProgressDialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0c0407

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/mms/freemessage/FileTransfer$5;

    invoke-direct {v2, p0}, Lcom/android/mms/freemessage/FileTransfer$5;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-boolean v3, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeCanceled:Z

    return-void
.end method

.method private validateFiles()V
    .locals 21

    const-wide/16 v18, 0x0

    const/4 v4, 0x0

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c002e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/freemessage/Utils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/freemessage/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v11}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ltz v9, :cond_1

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    :cond_2
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0x14

    if-le v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0507

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v20, 0x14

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupListener;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupListener;-><init>(Lcom/android/mms/freemessage/FileTransfer$1;)V

    new-instance v6, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupCancelListener;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/freemessage/FileTransfer;Lcom/android/mms/freemessage/FileTransfer$1;)V

    new-instance v7, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupDismissListener;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/freemessage/FileTransfer;Lcom/android/mms/freemessage/FileTransfer$1;)V

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mAttachErrorDialog:Landroid/app/AlertDialog;

    :goto_1
    return-void

    :cond_3
    if-eqz v16, :cond_4

    const-string v2, "application/vnd.oma.drm.content"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0508

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageFileSizeLimit()J

    move-result-wide v5

    cmp-long v2, v13, v5

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0509

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageFileWarnSizeLimit()J

    move-result-wide v5

    cmp-long v2, v13, v5

    if-lez v2, :cond_6

    new-instance v8, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0406

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c015a

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c00ee

    new-instance v5, Lcom/android/mms/freemessage/FileTransfer$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/freemessage/FileTransfer$2;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    invoke-virtual {v8, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0183

    new-instance v5, Lcom/android/mms/freemessage/FileTransfer$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/freemessage/FileTransfer$3;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    invoke-virtual {v8, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_6
    if-eqz v16, :cond_7

    const-string v2, "application/vnd.android.package-archive"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00fa

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0134

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    add-long v18, v18, v13

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/android/mms/freemessage/FileTransfer;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFilesHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1
.end method

.method private videoResize(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v11, p0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v11, "["

    const-string v12, ""

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "]"

    const-string v12, ""

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/mms/freemessage/FileTransfer;->getOutputFileDurationPossible(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v8}, Lcom/android/mms/freemessage/FileTransfer;->getVideoFileDurationTime(Ljava/lang/String;)I

    move-result v0

    invoke-static {v8}, Lcom/android/mms/freemessage/FileTransfer;->getNextAvailableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v8, v1}, Lcom/android/mms/freemessage/FileTransfer;->createShareviaObj(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/app/share/via/external/ShareviaObj;

    move-result-object v6

    iget-object v11, p0, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    invoke-virtual {v11, v6}, Lcom/samsung/app/share/via/external/NativeAccess;->getOutputFileSize(Lcom/samsung/app/share/via/external/ShareviaObj;)I

    move-result v11

    iput v11, p0, Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I

    iget-object v11, p0, Lcom/android/mms/freemessage/FileTransfer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v11

    iget v12, p0, Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I

    mul-int/lit16 v12, v12, 0x400

    add-int v7, v11, v12

    const-string v11, "Mms/FileTransfer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "durationPossible:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " durationOriginalFile:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mOutFileSizeEstimated:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " objectTotalSize"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, v10, v9, v5, p1}, Lcom/android/mms/freemessage/FileTransfer;->showVideoResizingDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I

    :goto_0
    iget-object v3, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    :goto_1
    return-void

    :cond_0
    sget v3, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccessReturnValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    sget v3, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccessReturnValue:I

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeCanceled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/freemessage/FileTransfer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    new-instance v4, Lcom/android/mms/freemessage/FileTransfer$6;

    invoke-direct {v4, p0}, Lcom/android/mms/freemessage/FileTransfer$6;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/freemessage/FileTransfer;->getVideoFileSize(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/freemessage/FileTransfer;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    div-int/lit16 v4, v2, 0x400

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    const-string v3, "Mms/FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resizing video size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private writeContactToStream(Ljava/io/OutputStream;Landroid/net/Uri;)Z
    .locals 10
    .param p1    # Ljava/io/OutputStream;
    .param p2    # Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    sget-object v8, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

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
.method public VcfFileAndSendTask(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/net/Uri;

    const-string v2, "Mms/FileTransfer"

    const-string v3, "postFileSelector: Bundle has VCF information"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;-><init>(Lcom/android/mms/freemessage/FileTransfer;Lcom/android/mms/freemessage/FileTransfer$1;)V

    iput-object v2, p0, Lcom/android/mms/freemessage/FileTransfer;->mVcfFileAndSendTask:Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;

    iget-object v2, p0, Lcom/android/mms/freemessage/FileTransfer;->mVcfFileAndSendTask:Lcom/android/mms/freemessage/FileTransfer$MakeVcfFileAndSend;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
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

    new-instance v0, Lcom/android/mms/freemessage/FileTransfer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/freemessage/FileTransfer$1;-><init>(Lcom/android/mms/freemessage/FileTransfer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public postFileSelector(Landroid/content/Intent;)V
    .locals 16
    .param p1    # Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v1, "Mms/FileTransfer"

    const-string v4, "postFileSelector: Bundle has no information(null)"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "results"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "results"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v14

    if-nez v14, :cond_2

    const-string v1, "Mms/FileTransfer"

    const-string v4, "postFileSelector: uris == null"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0406

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0404

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupListener;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupListener;-><init>(Lcom/android/mms/freemessage/FileTransfer$1;)V

    new-instance v5, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupCancelListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/freemessage/FileTransfer;Lcom/android/mms/freemessage/FileTransfer$1;)V

    new-instance v6, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupDismissListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v15}, Lcom/android/mms/freemessage/FileTransfer$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/freemessage/FileTransfer;Lcom/android/mms/freemessage/FileTransfer$1;)V

    invoke-static/range {v1 .. v6}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/freemessage/FileTransfer;->mAttachErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    move-object v7, v14

    array-length v12, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_5

    aget-object v13, v7, v11

    if-nez v13, :cond_4

    const-string v1, "Mms/FileTransfer"

    const-string v4, "postFileSelector: uri == null"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/io/File;

    sget-object v1, Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/freemessage/Utils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v1, "Mms/FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postFileSelector: Selected file has been added to the list(totally "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " files)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/freemessage/FileTransfer;->preValidateFiles()V

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

.method public setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    sput-object p1, Lcom/android/mms/freemessage/FileTransfer;->mHandler:Landroid/os/Handler;

    return-void
.end method
