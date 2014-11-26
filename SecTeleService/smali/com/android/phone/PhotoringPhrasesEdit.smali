.class public Lcom/android/phone/PhotoringPhrasesEdit;
.super Landroid/app/Activity;
.source "PhotoringPhrasesEdit.java"


# static fields
.field private static final DBG:Z

.field private static final reqIDs:[I


# instance fields
.field private file:Ljava/io/File;

.field private filesDir:Ljava/io/File;

.field private id:J

.field private mByteCnt:Landroid/widget/TextView;

.field private mContentType:I

.field private mScreenMode:I

.field private mThumbHeight:I

.field private mVideoDuration:J

.field private menuDlg:Landroid/app/AlertDialog;

.field private mtvPhrase:Landroid/widget/EditText;

.field private mtvTxt:Landroid/widget/TextView;

.field private mvImage:Landroid/widget/ImageView;

.field private phrase:Lcom/android/phone/PhotoringPhrase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhotoringPhrasesEdit;->DBG:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/PhotoringPhrasesEdit;->reqIDs:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    iput v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    iput-wide v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->id:J

    new-instance v0, Lcom/android/phone/PhotoringPhrase;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/PhotoringPhrase;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mVideoDuration:J

    iput v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mThumbHeight:I

    return-void
.end method

.method private Pick_Video_From_Trim(Landroid/content/Intent;)V
    .locals 9

    const-wide/16 v7, -0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v0, "PhotoringPhrasesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUriVideos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhotoringPhrasesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "ContentResolver is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data =\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    const-string v2, "PhotoringPhrasesEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v0, v7

    if-eqz v2, :cond_3

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    :goto_3
    const-string v2, "PhotoringPhrasesEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUriVideos : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    const-string v1, "photoring_temp_img.png"

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->setImageToView()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-wide v0, v7

    :goto_5
    const-string v3, "PhotoringPhrasesEdit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v1, "..."

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_5

    :cond_3
    move-object v0, v6

    goto :goto_3

    :cond_4
    move-wide v0, v7

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/phone/PhotoringPhrasesEdit;)I
    .locals 1
    .param p0    # Lcom/android/phone/PhotoringPhrasesEdit;

    iget v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhotoringPhrasesEdit;)Lcom/android/phone/PhotoringPhrase;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoringPhrasesEdit;

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PhotoringPhrasesEdit;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->delItem()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhotoringPhrasesEdit;I)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoringPhrasesEdit;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/PhotoringPhrasesEdit;->attachMenuSelected(I)V

    return-void
.end method

.method private attachMenuSelected(I)V
    .locals 8
    .param p1    # I

    invoke-static {p1}, Lcom/android/phone/PhotoringUtil;->getAttachIntent(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v5, Lcom/android/phone/PhotoringPhrasesEdit;->reqIDs:[I

    aget v2, v5, p1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->checkRemainingSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_1
    const v5, 0x7f0902a2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private delItem()V
    .locals 4

    new-instance v0, Lcom/android/phone/PhotoRingDB;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-wide v1, v1, Lcom/android/phone/PhotoringPhrase;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-wide v1, v1, Lcom/android/phone/PhotoringPhrase;->id:J

    iget-object v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v3, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    const v1, 0x7f09038c

    invoke-direct {p0, v1}, Lcom/android/phone/PhotoringPhrasesEdit;->displayToast(I)V

    return-void
.end method

.method private dismissMenuDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private displayToast(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v3, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedPhrase.. = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_0

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "callmessage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "contentPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v2, "..."

    goto :goto_0

    :cond_1
    const-string v2, "..."

    goto :goto_1
.end method

.method private setImageToView()V
    .locals 5

    const-string v2, "/data/data/com.android.phone/files/photoring_temp_img.png"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mThumbHeight:I

    iget v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mThumbHeight:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "photoring_data_img_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setImageToView(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    const-string v3, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImageToView path : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/phone/PhotoringPhrasesEdit;->DBG:Z

    if-eqz v2, :cond_1

    move-object v2, p1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "photoring_temp_img.png"

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mThumbHeight:I

    iget v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mThumbHeight:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "photoring_data_img_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void

    :cond_1
    const-string v2, "..."

    goto :goto_0

    :cond_2
    const-string v2, "PhotoringPhrasesEdit"

    const-string v3, "photo is null "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setPhrasePreviewInit()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iput v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iput-object v4, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iput-object v4, v1, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/phone/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showAttachMenuDialog()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->dismissMenuDialog()V

    new-instance v0, Lcom/android/phone/PhotoringPhrasesEdit$4;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoringPhrasesEdit$4;-><init>(Lcom/android/phone/PhotoringPhrasesEdit;)V

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->createAttachMenuDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->menuDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->dismissMenuDialog()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez p3, :cond_4

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "onActivityResult : data is null for REQUEST_IMAGE_FROM_CAMERA"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "Return value from GALLERY (extras) is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->getOutputX()I

    move-result v2

    mul-int v1, v2, v4

    div-int/2addr v1, v3

    :goto_1
    const-string v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image saved size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v2, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "photoring_temp_img.png"

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iput v8, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->setImageToView()V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhotoringUtil;->getOutputY()I

    move-result v1

    mul-int v2, v1, v3

    div-int/2addr v2, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/phone/PhotoringUtil;->getAttachIntent(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/phone/PhotoRingDB;

    invoke-direct {v1, p0}, Lcom/android/phone/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-wide v2, v2, Lcom/android/phone/PhotoringPhrase;->id:J

    iget-object v4, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v4, v4, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/android/phone/PhotoRingDB;->close()V

    :cond_6
    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->isNeedProcessTrim(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TRIM_SHARE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "PhotoringPhrasesEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    const-string v1, "photoring_temp_img.png"

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->setImageToView()V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, p3}, Lcom/android/phone/PhotoringPhrasesEdit;->Pick_Video_From_Trim(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1    # Landroid/view/MenuItem;

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "video/*"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t play video "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v7, v7, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.TRIM_SHARE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v6, "file://"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onContextItemSelected uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "uri"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "option"

    const-string v6, "PostProcessedTrim"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {p0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t play video "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v5, v5, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/phone/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    iput v7, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iput-object v6, v5, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iput-object v6, v5, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "PhotoringPhrasesEdit"

    const-string v7, "<<onCreate>>"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f04006c

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0075

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mThumbHeight:I

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    const v6, 0x7f0a019d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const v6, 0x7f0a019e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mByteCnt:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    new-instance v7, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;

    iget-object v8, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mByteCnt:Landroid/widget/TextView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v6, 0x1

    new-array v3, v6, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/phone/PhotoringUtil$CharacterFilter;

    invoke-direct {v7, p0}, Lcom/android/phone/PhotoringUtil$CharacterFilter;-><init>(Landroid/content/Context;)V

    aput-object v7, v3, v6

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const-string v7, "disableEmoticonInput=true"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const v6, 0x7f0a019f

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mvImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/phone/PhotoringPhrasesEdit$1;

    invoke-direct {v7, p0}, Lcom/android/phone/PhotoringPhrasesEdit$1;-><init>(Lcom/android/phone/PhotoringPhrasesEdit;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a01a0

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->filesDir:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/phone/PhotoringPhrasesEdit;->filesDir:Ljava/io/File;

    const-string v8, "photoring_temp_img.png"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->file:Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "type"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    iget-object v7, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const v6, 0x7f090812

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(I)V

    :goto_1
    iget v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    if-eqz v6, :cond_1

    const-string v6, "id"

    const-wide/16 v7, -0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->id:J

    :cond_1
    iget v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    new-instance v2, Lcom/android/phone/PhotoRingDB;

    invoke-direct {v2, p0}, Lcom/android/phone/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-wide v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/android/phone/PhotoRingDB;->getPhraseById(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/phone/PhotoringPhrase;->id:J

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const/4 v7, 0x4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/android/phone/PhotoringPhrase;->type:I

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v7, v7, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    if-nez v6, :cond_7

    iget-object v7, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    const/4 v6, 0x4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    iget v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const v6, 0x7f090811

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_1

    :cond_5
    const v6, 0x7f090810

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/phone/PhotoringPhrasesEdit;->setImageToView(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    const-string v7, "photoring_temp_img.png"

    invoke-static {p0, v6, v7}, Lcom/android/phone/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->setImageToView()V

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v6, v6, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "photoring_temp_img.png"

    invoke-static {p0, v5, v6}, Lcom/android/phone/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvTxt:Landroid/widget/TextView;

    const v7, 0x7f090821

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1    # Landroid/view/ContextMenu;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f090803

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0902d2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x3

    const v1, 0x7f0902d4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1    # Landroid/view/Menu;

    const v5, 0x7f020004

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v0, 0x7f0907fb

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f0902d5

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0909d5

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x4

    const v1, 0x7f0902d4

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x5

    const v1, 0x7f090453

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1    # Landroid/view/MenuItem;

    const v13, 0x7f090826

    const v12, 0x7f090452

    const/4 v5, 0x2

    const/16 v4, 0x2f

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    new-instance v0, Lcom/android/phone/PhotoRingDB;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoRingDB;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    const v2, 0x102002c

    if-ne v9, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v1

    :cond_0
    packed-switch v9, :pswitch_data_0

    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->showAttachMenuDialog()V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    if-ne v2, v1, :cond_2

    invoke-static {v1}, Lcom/android/phone/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_temp_img.png"

    invoke-static {v2, v3, v10}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_img_thumb.png"

    const-string v4, ".png"

    const-string v5, "thumb.png"

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget v3, v3, Lcom/android/phone/PhotoringPhrase;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhotoRingDB;->CheckPhraseExist(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v3, v3, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhotoRingDB;->insertPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v12}, Lcom/android/phone/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    if-ne v2, v5, :cond_3

    invoke-static {v1}, Lcom/android/phone/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_img_thumb.png"

    const-string v4, ".png"

    const-string v5, "thumb.png"

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f090827

    invoke-direct {p0, v1}, Lcom/android/phone/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, v13}, Lcom/android/phone/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->filesDir:Ljava/io/File;

    const-string v3, "photoring_temp_img.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->file:Ljava/io/File;

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v11, v2, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    if-ne v2, v1, :cond_8

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v10, v2, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    if-eqz v10, :cond_7

    invoke-static {p0, v10}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v11}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :goto_3
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_temp_img.png"

    invoke-static {v2, v3, v10}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_img_thumb.png"

    invoke-static {v2, v3, v11}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget v3, v3, Lcom/android/phone/PhotoringPhrase;->type:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhotoRingDB;->CheckPhraseExist(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-wide v1, v1, Lcom/android/phone/PhotoringPhrase;->id:J

    cmp-long v1, v6, v1

    if-nez v1, :cond_b

    :cond_6
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-wide v1, v1, Lcom/android/phone/PhotoringPhrase;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v3, v3, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v4, v4, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget v5, v5, Lcom/android/phone/PhotoringPhrase;->type:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/PhotoRingDB;->updatePhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-direct {p0, v12}, Lcom/android/phone/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_7
    invoke-static {v1}, Lcom/android/phone/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v10

    const-string v1, ".png"

    const-string v2, "thumb.png"

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_8
    iget v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    if-ne v2, v5, :cond_a

    if-nez v11, :cond_9

    invoke-static {v1}, Lcom/android/phone/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v11

    const-string v1, ".png"

    const-string v2, "thumb.png"

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    :goto_5
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_img_thumb.png"

    invoke-static {v2, v3, v11}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/PhotoringPhrase;->thumb:Ljava/lang/String;

    goto :goto_4

    :cond_9
    invoke-static {p0, v11}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_a
    iget v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mContentType:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f090827

    invoke-direct {p0, v1}, Lcom/android/phone/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v13}, Lcom/android/phone/PhotoringPhrasesEdit;->displayToast(I)V

    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->filesDir:Ljava/io/File;

    const-string v3, "photoring_temp_img.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->file:Ljava/io/File;

    goto/16 :goto_1

    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0909d4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090025

    new-instance v4, Lcom/android/phone/PhotoringPhrasesEdit$3;

    invoke-direct {v4, p0}, Lcom/android/phone/PhotoringPhrasesEdit$3;-><init>(Lcom/android/phone/PhotoringPhrasesEdit;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090028

    new-instance v4, Lcom/android/phone/PhotoringPhrasesEdit$2;

    invoke-direct {v4, p0}, Lcom/android/phone/PhotoringPhrasesEdit$2;-><init>(Lcom/android/phone/PhotoringPhrasesEdit;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget v2, v2, Lcom/android/phone/PhotoringPhrase;->type:I

    if-ne v2, v1, :cond_d

    const-string v1, "support_mcid_with_alertinfo"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f090a87

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_6
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_c
    const v1, 0x7f090822

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_d
    const v1, 0x7f090823

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :pswitch_4
    invoke-virtual {v0}, Lcom/android/phone/PhotoRingDB;->close()V

    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v1, v1, Lcom/android/phone/PhotoringPhrase;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhotoringPhrasesEdit;->phrase:Lcom/android/phone/PhotoringPhrase;

    iget-object v2, v2, Lcom/android/phone/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhotoringPhrasesEdit;->returnSelectedPhrase(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

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

.method protected onPause()V
    .locals 2

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/Menu;

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mScreenMode:I

    if-ne v3, v4, :cond_4

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "PhotoringPhrasesEdit"

    const-string v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-direct {p0}, Lcom/android/phone/PhotoringPhrasesEdit;->setPhrasePreviewInit()V

    return-void
.end method
