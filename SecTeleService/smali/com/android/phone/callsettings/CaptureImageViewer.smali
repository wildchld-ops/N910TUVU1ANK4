.class public Lcom/android/phone/callsettings/CaptureImageViewer;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;,
        Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;
    }
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private isLongKeypress:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDisplayNameProjection:Ljava/lang/String;

.field private final mFilePathProjection:Ljava/lang/String;

.field private mImageGallery:Landroid/widget/Gallery;

.field private final mMimeTypeProjection:Ljava/lang/String;

.field private mNoItemBackground:Landroid/widget/ImageView;

.field private mNoSDCardstart:Z

.field private mSelectedFilePath:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mTitle:Landroid/widget/TextView;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;

    const-string v0, "_data"

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mFilePathProjection:Ljava/lang/String;

    const-string v0, "mime_type"

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mMimeTypeProjection:Ljava/lang/String;

    const-string v0, "title"

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mDisplayNameProjection:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mNoSDCardstart:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->isLongKeypress:Z

    return-void
.end method

.method private CaptureImageViewer_checkFsWritable()Z
    .locals 5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const-string v2, "CaptureImageViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFsWritable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not writable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/CaptureImageViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CaptureImageViewer;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->isLongKeypress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/CaptureImageViewer;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->isLongKeypress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/Gallery;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/database/Cursor;
    .param p1    # I

    invoke-static {p0, p1}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/ImageSwitcher;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/CaptureImageViewer;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/CaptureImageViewer;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I

    return p1
.end method

.method private static getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/database/Cursor;
    .param p1    # I

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, ""

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, ""

    goto :goto_0
.end method

.method private showToast(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mToast:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateNoItemBackground(I)V
    .locals 4
    .param p1    # I

    iget-object v2, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mNoItemBackground:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    const v1, 0x7f02023a

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const v1, 0x7f020239

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mNoItemBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CaptureImageViewer"

    const-string v3, "setImageResource - OutOfMemory exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public CaptureImageViewer_hasStorage(Z)Z
    .locals 5
    .param p1    # Z

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CaptureImageViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->CaptureImageViewer_checkFsWritable()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public imageSelected(Landroid/view/View;IJ)V
    .locals 20
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # J

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mUri:Landroid/net/Uri;

    const-string v5, "_data like \'%.vcy\' or _data like \'%.vci\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    if-eqz v12, :cond_2

    :try_start_1
    move/from16 v0, p2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v12, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x1

    invoke-static {v12, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-static {v12, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "videocallimages/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v12, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "videocallimages/jpeg-scramble"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v12, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x2

    invoke-static {v12, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_a

    const-string v2, ".vci"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v10, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I

    :goto_3
    return-void

    :cond_5
    const/4 v2, 0x2

    :try_start_3
    invoke-static {v12, v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v13

    const-string v2, "CaptureImageViewer"

    const-string v3, "SQLiteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v2, ".vcy"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_5
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v11, v2

    if-lez v11, :cond_8

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-array v0, v11, [B

    move-object/from16 v19, v0

    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    new-instance v18, Lcom/android/phone/callsettings/ScrambleLib;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/ScrambleLib;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/phone/callsettings/ScrambleLib;->setScrambleData([BII)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/callsettings/ScrambleLib;->decode()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v6, v11, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v13

    move-object v14, v15

    :goto_5
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v14, :cond_4

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v13

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    move-object v14, v15

    :cond_8
    if-eqz v14, :cond_4

    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v13

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_4
    move-exception v13

    :goto_6
    :try_start_a
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v14, :cond_4

    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v13

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    :goto_7
    if-eqz v14, :cond_9

    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_9
    :goto_8
    throw v2

    :catch_6
    move-exception v13

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedPosition:I

    goto/16 :goto_3

    :catchall_2
    move-exception v2

    move-object v14, v15

    goto :goto_7

    :catch_7
    move-exception v13

    move-object v14, v15

    goto :goto_6

    :catch_8
    move-exception v13

    goto :goto_5
.end method

.method public makeView()Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    const-string v0, "CaptureImageViewer"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->updateNoItemBackground(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090453

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080056

    new-instance v4, Lcom/android/phone/callsettings/CaptureImageViewer$4;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$4;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const/4 v6, 0x1

    const v4, 0x7f040018

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->CaptureImageViewer_hasStorage(Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mContentResolver:Landroid/content/ContentResolver;

    const v4, 0x7f0a006b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0a006f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mNoItemBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/CaptureImageViewer;->updateNoItemBackground(I)V

    const v4, 0x7f0a006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CaptureImageViewer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/callsettings/CaptureImageViewer$ImageFactory;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$1;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v4, 0x7f0a006d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Gallery;

    iput-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/callsettings/CaptureImageViewer$ImageAdapter;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$2;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    new-instance v5, Lcom/android/phone/callsettings/CaptureImageViewer$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/CaptureImageViewer$3;-><init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V

    invoke-virtual {v4, v5}, Landroid/widget/Gallery;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f09053c

    invoke-direct {p0, v4, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->showToast(II)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "CaptureImageViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAdapter.getCount(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    invoke-virtual {v6}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    const v4, 0x7f0a006e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    if-nez v2, :cond_0

    iput-boolean v6, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mNoSDCardstart:Z

    const v4, 0x7f09053b

    invoke-direct {p0, v4, v6}, Lcom/android/phone/callsettings/CaptureImageViewer;->showToast(II)V

    goto :goto_0

    :cond_3
    const v4, 0x7f0a006a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1    # Landroid/widget/AdapterView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p3}, Landroid/widget/Gallery;->setSelection(I)V

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/phone/callsettings/CaptureImageViewer;->imageSelected(Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->showDialog(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/phone/callsettings/CaptureImageViewer;->imageSelected(Landroid/view/View;IJ)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->isLongKeypress:Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->showDialog(I)V

    :cond_0
    return v1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
