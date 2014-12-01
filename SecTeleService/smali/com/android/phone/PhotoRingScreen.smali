.class public Lcom/android/phone/PhotoRingScreen;
.super Landroid/app/Activity;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhotoRingScreen$16;,
        Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;,
        Lcom/android/phone/PhotoRingScreen$PROJECTION_NUMBER;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final PHONE_URI:Landroid/net/Uri;

.field public static final THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

.field public static VIDEO_DURATION_LIMIT:I

.field public static mUriCamera:Landroid/net/Uri;

.field public static mUriVideos:Landroid/net/Uri;


# instance fields
.field private final CONTENT_FROM_GALLERY:I

.field private final CONTENT_FROM_MO_LOG:I

.field private final CONTENT_FROM_MT_LOG:I

.field private final CONTENT_IMAGE:I

.field private final CONTENT_NONE:I

.field private final CONTENT_VIDEO:I

.field private MAX_LENGTH_BYTE:I

.field private PRUrl:Ljava/lang/String;

.field private final REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

.field private final REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

.field private final REQUEST_PHOTO_FROM_CROP:I

.field private final REQUEST_PICK_NUM_FROM_CONTACTS:I

.field private final REQUEST_PICK_PHOTO_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_TRIM:I

.field private final REQUEST_SHOW_NOTICE:I

.field private bEmptyNumErr:Z

.field private bMobileOffPopup:Z

.field private bMobileOnPopup:Z

.field private bShowOnly:Z

.field private bUnregierShowme:Z

.field private bisExcuted:Z

.field private cancellistener:Landroid/content/DialogInterface$OnCancelListener;

.field private chgUrl:Ljava/lang/String;

.field private clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

.field private contactName:Ljava/lang/String;

.field private contentUrl:Ljava/lang/String;

.field private iMM:Landroid/view/inputmethod/InputMethodManager;

.field private mBTN_Cancel:Landroid/widget/Button;

.field private mBTN_MediaEdit:Landroid/widget/Button;

.field private mBTN_MessageList:Landroid/widget/Button;

.field private mBTN_Send:Landroid/widget/Button;

.field private mByteCnt:Landroid/widget/TextView;

.field private mCB:Landroid/widget/CheckBox;

.field private mCallMessageNetworkListener:Lcom/android/phone/ICallMessageNetworkListener;

.field private mContactButton:Landroid/widget/Button;

.field private mContentFrom:I

.field private mContentType:I

.field private mFilePath:Ljava/lang/String;

.field private mHasphotoringToDial:Z

.field private mIsOverLength:Z

.field private mIsShowMore16CharWarning:Z

.field private mIsShowMoreCharWarning:Z

.field private mMenuDialog:Landroid/app/AlertDialog;

.field public mNameView:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field private mNumberText:Landroid/widget/AutoCompleteTextView;

.field private mPM:Lcom/android/phone/PhotoRingMgr;

.field public mPhotoringContentsText:Landroid/widget/TextView;

.field private mPreparedMediaButton:Landroid/widget/ImageButton;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipientsText:Landroid/widget/AutoCompleteTextView;

.field private mThumbHeight:I

.field private mVideoDuration:J

.field public mVideoErrIcon:Landroid/widget/ImageView;

.field private needDownContent:Z

.field private pMe:Landroid/content/Context;

.field private prevFilePath:Ljava/lang/String;

.field private final reqIDs:[I

.field private uploadPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    const/16 v0, 0x3a98

    sput v0, Lcom/android/phone/PhotoRingScreen;->VIDEO_DURATION_LIMIT:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/PhotoRingScreen;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhotoRingScreen;->PHONE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mNameView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Cancel:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;

    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->needDownContent:Z

    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->bEmptyNumErr:Z

    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->bShowOnly:Z

    iput-boolean v4, p0, Lcom/android/phone/PhotoRingScreen;->bMobileOffPopup:Z

    iput-boolean v4, p0, Lcom/android/phone/PhotoRingScreen;->bMobileOnPopup:Z

    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->bisExcuted:Z

    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->bUnregierShowme:Z

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->REQUEST_PICK_PHOTO_FROM_GALLERY:I

    const/16 v0, 0x97

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    const/16 v0, 0x98

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->REQUEST_PICK_VIDEO_FROM_TRIM:I

    const/16 v0, 0x99

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

    const/16 v0, 0x9a

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

    const/16 v0, 0x9b

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->REQUEST_PICK_NUM_FROM_CONTACTS:I

    const/16 v0, 0x9c

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->REQUEST_SHOW_NOTICE:I

    const/16 v0, 0x9d

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->REQUEST_PHOTO_FROM_CROP:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->reqIDs:[I

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/PhotoRingScreen;->mVideoDuration:J

    iput v3, p0, Lcom/android/phone/PhotoRingScreen;->CONTENT_NONE:I

    iput v4, p0, Lcom/android/phone/PhotoRingScreen;->CONTENT_IMAGE:I

    iput v5, p0, Lcom/android/phone/PhotoRingScreen;->CONTENT_VIDEO:I

    iput v3, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    iput v3, p0, Lcom/android/phone/PhotoRingScreen;->CONTENT_FROM_GALLERY:I

    iput v4, p0, Lcom/android/phone/PhotoRingScreen;->CONTENT_FROM_MT_LOG:I

    iput v5, p0, Lcom/android/phone/PhotoRingScreen;->CONTENT_FROM_MO_LOG:I

    iput v3, p0, Lcom/android/phone/PhotoRingScreen;->mContentFrom:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->MAX_LENGTH_BYTE:I

    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->mIsOverLength:Z

    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z

    iput v3, p0, Lcom/android/phone/PhotoRingScreen;->mThumbHeight:I

    new-instance v0, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoRingScreen$MobileDataBroadcastReceiver;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/PhotoRingScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoRingScreen$1;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/PhotoRingScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoRingScreen$2;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/PhotoRingScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoRingScreen$3;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/phone/PhotoRingScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoRingScreen$4;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/PhotoRingScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/PhotoRingScreen$5;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/ICallMessageNetworkListener;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    return-void

    :array_0
    .array-data 4
        0x96
        0x97
        0x99
        0x9a
    .end array-data
.end method

.method private Pick_Video_From_Trim(Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v1, "PhotoRingScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUriVideos : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PhotoRingScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_1

    move-object v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "PhotoRingScreen"

    const-string v1, "ContentResolver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    const-string v0, "..."

    goto :goto_0

    :cond_1
    const-string v0, "..."

    goto :goto_1

    :cond_2
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

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_3
    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_4
    const-string v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v0, v6

    if-eqz v2, :cond_4

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :cond_4
    const-string v1, "PhotoRingScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUriVideos : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v1, "photoring_data.png"

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->setImageToView()V

    :goto_6
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    move-wide v0, v6

    :goto_7
    const-string v3, "PhotoRingScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const-string v0, "..."

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020108

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "photoring_data_thumb.png"

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_7

    :cond_7
    move-wide v0, v6

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # I
    .param p2    # Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->chgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen;->chgUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->placeCallIncludeMessage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/PhotoRingScreen;->showErrorDismissDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/PhotoRingScreen;)Z
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-boolean v0, p0, Lcom/android/phone/PhotoRingScreen;->needDownContent:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/PhotoRingScreen;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhotoRingScreen;->needDownContent:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/PhotoRingScreen;)Z
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-boolean v0, p0, Lcom/android/phone/PhotoRingScreen;->bShowOnly:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/PhotoRingScreen;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhotoRingScreen;->bShowOnly:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/PhotoRingScreen;)I
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/PhotoRingScreen;I)I
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->setImageToView()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/PhotoRingScreen;)Z
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-boolean v0, p0, Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/PhotoRingScreen;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/CheckBox;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->enableMobileData()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/PhotoRingScreen;)Z
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->checkMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/PhotoRingScreen;)Z
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-boolean v0, p0, Lcom/android/phone/PhotoRingScreen;->bEmptyNumErr:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/phone/PhotoRingScreen;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhotoRingScreen;->bEmptyNumErr:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/PhotoRingScreen;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhotoRingScreen;->bUnregierShowme:Z

    return p1
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0    # Lcom/android/phone/PhotoRingScreen;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/PhotoRingScreen;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V

    return-void
.end method

.method private checkMobileData()Z
    .locals 13

    const v12, 0x7f0a009b

    const v11, 0x7f04006a

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "key_photoring_enable_mobile_data_show"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_2

    iget-boolean v6, p0, Lcom/android/phone/PhotoRingScreen;->bMobileOffPopup:Z

    if-eqz v6, :cond_2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0a0190

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "support_mcid_with_alertinfo"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f090a7f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v6, 0x7f0a018e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0905ba

    new-instance v7, Lcom/android/phone/PhotoRingScreen$6;

    invoke-direct {v7, p0}, Lcom/android/phone/PhotoRingScreen$6;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f090028

    new-instance v7, Lcom/android/phone/PhotoRingScreen$7;

    invoke-direct {v7, p0}, Lcom/android/phone/PhotoRingScreen$7;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/PhotoRingScreen$8;

    invoke-direct {v6, p0}, Lcom/android/phone/PhotoRingScreen$8;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iput-boolean v9, p0, Lcom/android/phone/PhotoRingScreen;->bMobileOffPopup:Z

    const/4 v3, 0x0

    :cond_0
    :goto_1
    return v3

    :cond_1
    const v6, 0x7f09080c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->enableMobileData()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "key_photoring_mobile_data_show"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_0

    iget-boolean v6, p0, Lcom/android/phone/PhotoRingScreen;->bMobileOnPopup:Z

    if-eqz v6, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0a0190

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "support_mcid_with_alertinfo"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f090a7e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const v6, 0x7f0a018e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f090025

    new-instance v7, Lcom/android/phone/PhotoRingScreen$9;

    invoke-direct {v7, p0}, Lcom/android/phone/PhotoRingScreen$9;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/PhotoRingScreen$10;

    invoke-direct {v6, p0}, Lcom/android/phone/PhotoRingScreen$10;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iput-boolean v9, p0, Lcom/android/phone/PhotoRingScreen;->bMobileOnPopup:Z

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const v6, 0x7f09080b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private dismissMenuDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "dismissMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private editMenuSelected(I)V
    .locals 7

    invoke-static {p1}, Lcom/android/phone/PhotoringUtil;->getAttachIntent(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->reqIDs:[I

    aget v1, v1, p1

    const/16 v2, 0x9a

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->checkRemainingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    const-string v4, "android.intent.extra.sizeLimit"

    sget-object v5, Lcom/android/phone/PhotoringUtil;->contentSpec:Lcom/android/phone/PhotoringUtil$ContentSpec;

    iget-wide v5, v5, Lcom/android/phone/PhotoringUtil$ContentSpec;->video_max_size:J

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/PhotoRingScreen;->bisExcuted:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/PhotoRingScreen;->bisExcuted:Z

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v0, 0x7f0902a2

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableMobileData()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "DataEnable"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "Roaming"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/PhotoRingScreen;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v3, 0x2006

    invoke-static {p0, v3}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    const-string v4, "persist.sys.restrict_background"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ENABLED"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhotoRingScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initPhotoRingScreen()V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->setContentView(I)V

    const v0, 0x7f0a01b3

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const v0, 0x7f0a01b2

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a01b1

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->registerForContextMenu(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a01b0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_1
    const v0, 0x7f0a019e

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    const v0, 0x7f0a01af

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/android/phone/PhotoRingScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/PhotoRingScreen$14;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/android/phone/PhotoRingScreen$15;

    invoke-direct {v1, p0}, Lcom/android/phone/PhotoRingScreen$15;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/PhotoringUtil$PhraseTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/phone/PhotoringUtil$CharacterFilter;

    invoke-direct {v1, p0}, Lcom/android/phone/PhotoringUtil$CharacterFilter;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string v1, "disableEmoticonInput=true"

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0a01b5

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f0a01b7

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentFrom:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentFrom:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    const v0, 0x7f0a01b6

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->setTempGUI()V

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->loadPhotoNameInfo()V

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->mThumbHeight:I

    return-void
.end method

.method private loadTabs()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "existingRecipientCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x9b

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhotoRingScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "+82"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+82"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{Space}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private placeCallIncludeMessage()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "PhotoRingScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placeCallIncludeMessage.."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->saveToHistory()V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "key_photoring_mt_content_url"

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "support_photo_ring"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "callmessage"

    const-string v2, "<PhotoRing>"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V

    :goto_3
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "clear"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhotoRingScreen;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->finish()V

    return-void

    :cond_2
    const-string v0, ""

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "key_photoring_mt_content_url"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    const-string v1, "callmessage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const-string v0, "PhotoRingScreen"

    const-string v1, "warning : number is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private resetContentFrom()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentFrom:I

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private saveToHistory()V
    .locals 11

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget v1, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-ne v1, v9, :cond_1

    invoke-static {v9}, Lcom/android/phone/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/data/com.android.phone/files/"

    const-string v2, "photoring_data.png"

    invoke-static {v1, v2, v0}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_thumb.png"

    const-string v4, ".png"

    const-string v5, "thumb.png"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/PhotoRingDB;

    invoke-direct {v3, p0}, Lcom/android/phone/PhotoRingDB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Lcom/android/phone/PhotoRingDB;->getPhrasesByType(I)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/phone/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/phone/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0, v7}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/phone/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3, v2, v1, v0, v9}, Lcom/android/phone/PhotoRingDB;->insertPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lcom/android/phone/PhotoRingDB;->close()V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-ne v1, v8, :cond_4

    invoke-static {v7}, Lcom/android/phone/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "photoring_data.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "/data/data/com.android.phone/files/"

    const-string v2, "photoring_data.mp4"

    invoke-static {v0, v2, v1}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "/data/data/com.android.phone/files/"

    const-string v3, "photoring_data_thumb.png"

    const-string v4, ".mp4"

    const-string v5, "thumb.png"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const-string v3, "photoring_temp.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photoring_temp.mp4"

    invoke-static {v2, v3, v1}, Lcom/android/phone/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_data"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private setImageToView()V
    .locals 4

    const-string v0, "/data/data/com.android.phone/files/photoring_data.png"

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/PhotoRingScreen;->mThumbHeight:I

    iget v2, p0, Lcom/android/phone/PhotoRingScreen;->mThumbHeight:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "photoring_data_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setPreviewInit()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iput v2, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setTempGUI()V
    .locals 3

    const v2, 0x7f0b0068

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    const v1, 0x7f0902c7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const-string v0, "support_mcid_with_alertinfo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const v1, 0x7f090a79

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const v1, 0x7f0907f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showEditMenuDialog()V
    .locals 1

    const-string v0, "showEditMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->dismissMenuDialog()V

    invoke-static {p0, p0}, Lcom/android/phone/PhotoringUtil;->createAttachMenuDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x7f090025

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f09080d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showErrorDismissDialog(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x7f090025

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f09080d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090025

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090028

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startRecentCallMessageActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PhotoringPhraseList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "finish"

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replace(replace(replace(replace("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"-\",\"\"),\")\",\"\"),\"(\",\"\"), \" \",\"\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPhotoNameInfo()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v0, "loadPhotoNameInfo.."

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/PhotoRingScreen$PROJECTION_NUMBER;->projection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getSelection()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v5

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/16 v5, 0x3b

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "PhotoRingScreen"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PhotoRingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/phone/PhotoRingScreen;->bisExcuted:Z

    if-eq p2, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->dismissMenuDialog()V

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "PhotoRingScreen"

    const-string v1, "callmessage selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callmessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentPath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhotoRingScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returned mgs - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", and contents - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_d

    move-object v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    const-string v0, ".png"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".jpg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_2
    const-string v0, "file://"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput v8, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    const-string v2, "photoring_data.png"

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->setImageToView()V

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->resetContentFrom()V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "support_mcid_with_alertinfo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/PhotoRingScreen;->bUnregierShowme:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a8b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->showErrorDismissDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "PhotoRingScreen"

    const-string v1, "Return value from GALLERY (extras) is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_6

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->getOutputX()I

    move-result v2

    mul-int v1, v2, v4

    div-int/2addr v1, v3

    :goto_4
    const-string v5, "PhotoRingScreen"

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

    const-string v4, "] => ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v2, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "photoring_data.png"

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const-string v0, "/data/data/com.android.phone/files/photoring_data.png"

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    iput v8, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->setImageToView()V

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/phone/PhotoringUtil;->getOutputY()I

    move-result v1

    mul-int v2, v1, v3

    div-int/2addr v2, v4

    goto :goto_4

    :sswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    const-string v1, "PhotoRingScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUriCamera by REQUEST_ATTACH_PHOTO_FROM_CAMERA : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/phone/PhotoringUtil;->getAttachIntent(I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x9d

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const v1, 0x7f090929

    invoke-virtual {p0, v1}, Lcom/android/phone/PhotoRingScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    const-string v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v0, "..."

    goto :goto_5

    :sswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/16 v0, 0x2007

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_9
    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->isNeedProcessTrim(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TRIM_SHARE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x98

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const v0, 0x7f090929

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    const-string v0, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intetn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iput v7, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    iput-object v1, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v1, "photoring_data.png"

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->setImageToView()V

    :goto_6
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020108

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "photoring_data_thumb.png"

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_4
    const-string v0, "PhotoRingScreen"

    const-string v1, "REQUEST_PICK_VIDEO_FROM_TRIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/android/phone/PhotoRingScreen;->Pick_Video_From_Trim(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "..."

    goto/16 :goto_1

    :cond_d
    const-string v0, "..."

    goto/16 :goto_2

    :cond_e
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v0, "file://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "photoring_data.png"

    invoke-static {p0, v2, v0}, Lcom/android/phone/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "file://"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    :goto_7
    iput v7, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    goto/16 :goto_3

    :cond_f
    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v2, "photoring_data.png"

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    sget-object v0, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    goto :goto_7

    :sswitch_5
    const-string v0, "PhotoRingScreen"

    const-string v1, "onActivityResult(REQUEST_PICK_NUM_FROM_CONTACTS)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "PhotoRingScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberFromContact = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v2, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idAndNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idAndNumber.indexOf(\';\') = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_10

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sCallerNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sCallerNo.trim().length() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    const-string v1, "P"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    const-string v1, "PhotoRingScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNumber = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/phone/PhotoRingScreen;->DBG:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->loadPhotoNameInfo()V

    goto/16 :goto_0

    :cond_14
    const-string v0, "xxx-xxxx"

    goto/16 :goto_8

    :cond_15
    const-string v0, "..."

    goto :goto_9

    :sswitch_6
    const-string v0, "finishApp"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->finish()V

    goto/16 :goto_0

    :cond_16
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->checkMobileData()Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x96 -> :sswitch_2
        0x97 -> :sswitch_3
        0x98 -> :sswitch_4
        0x99 -> :sswitch_2
        0x9a -> :sswitch_3
        0x9b -> :sswitch_5
        0x9c -> :sswitch_6
        0x9d -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->startRecentCallMessageActivity()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09081a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->bEmptyNumErr:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v0, 0x2005

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/16 v0, 0x2004

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->dismissMenuDialog()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/phone/PhotoRingScreen;->mIsOverLength:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x2001

    invoke-static {p0, v0}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_photoring_duty_show"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_photoring_duty_media_show"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_b

    :cond_8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a018e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-nez v2, :cond_9

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0a0190

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090808

    new-instance v2, Lcom/android/phone/PhotoRingScreen$11;

    invoke-direct {v2, p0}, Lcom/android/phone/PhotoRingScreen$11;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090028

    new-instance v2, Lcom/android/phone/PhotoRingScreen$12;

    invoke-direct {v2, p0}, Lcom/android/phone/PhotoRingScreen$12;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/PhotoRingScreen$13;

    invoke-direct {v1, p0}, Lcom/android/phone/PhotoRingScreen$13;-><init>(Lcom/android/phone/PhotoRingScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_9
    const-string v2, "support_photo_ring"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090815

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->checkMobileData()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    :cond_c
    iput-boolean v3, p0, Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z

    goto/16 :goto_1

    :cond_d
    const-string v0, "support_mcid_with_alertinfo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setRealtimeServiceInfoCall message without image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/phone/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->placeCallIncludeMessage()V

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->showEditMenuDialog()V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "PhotoRingScreen"

    const-string v1, "add contact for photoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->loadTabs()V

    goto/16 :goto_0

    :sswitch_4
    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-ne v0, v5, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_photoring_to_videoplayer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t play video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :sswitch_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0, v3}, Lcom/android/phone/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0, v5}, Lcom/android/phone/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_8
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0113 -> :sswitch_3
        0x7f0a0182 -> :sswitch_5
        0x7f0a0185 -> :sswitch_6
        0x7f0a0188 -> :sswitch_7
        0x7f0a018b -> :sswitch_8
        0x7f0a01b1 -> :sswitch_4
        0x7f0a01b5 -> :sswitch_0
        0x7f0a01b6 -> :sswitch_2
        0x7f0a01b7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_photoring_to_videoplayer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t play video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TRIM_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "option"

    const-string v2, "PostProcessedTrim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x98

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const v1, 0x7f090929

    invoke-virtual {p0, v1}, Lcom/android/phone/PhotoRingScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    const-string v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/phone/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iput v2, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    const/4 v11, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "support_mcid_with_alertinfo"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f090a7b

    invoke-virtual {p0, v7}, Lcom/android/phone/PhotoRingScreen;->setTitle(I)V

    :goto_0
    const-string v7, "onCreate"

    invoke-direct {p0, v7}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/android/phone/PhotoRingScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhotoRingMgr;->getInstance()Lcom/android/phone/PhotoRingMgr;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    iput-object p0, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    invoke-virtual {v7, v4}, Lcom/android/phone/PhotoRingMgr;->getNumberFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_3

    :cond_1
    const-string v7, "please input the number"

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->finish()V

    :goto_1
    return-void

    :cond_2
    const v7, 0x7f0907fc

    invoke-virtual {p0, v7}, Lcom/android/phone/PhotoRingScreen;->setTitle(I)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    iget-object v8, p0, Lcom/android/phone/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/ICallMessageNetworkListener;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhotoRingMgr;->registerCallMessageNetworkListener(Lcom/android/phone/ICallMessageNetworkListener;)V

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    invoke-virtual {v7}, Lcom/android/phone/PhotoRingMgr;->getContentSpecCall()V

    const-string v7, "photoring_uri"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "photoring_uri"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    const-string v1, "photoring_data.png"

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v1, "photoring_data.mp4"

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Lcom/android/phone/PhoneGlobals;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    iget-object v8, p0, Lcom/android/phone/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/com.android.phone/files/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/phone/PhotoRingScreen;->needDownContent:Z

    const-string v7, "call_type"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/PhotoRingScreen;->mContentFrom:I

    iget v7, p0, Lcom/android/phone/PhotoRingScreen;->mContentFrom:I

    if-gez v7, :cond_5

    iput-boolean v11, p0, Lcom/android/phone/PhotoRingScreen;->bShowOnly:Z

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0908f8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v7, "make file failed"

    invoke-direct {p0, v7}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentFrom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/PhotoRingScreen;->mContentFrom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->initPhotoRingScreen()V

    const-string v7, "cnap_name"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string v8, "cnap_name"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "key_photoring_use_guide_show"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_8

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/phone/PhotoringGuide;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x9c

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->checkMobileData()Z

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/PhotoRingScreen;->mContentType:I

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
    .locals 1
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/ICallMessageNetworkListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhotoRingMgr;->deregisterCallMessageNetworkListener(Lcom/android/phone/ICallMessageNetworkListener;)V

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;

    :cond_0
    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mNameView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mContactButton:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mBTN_Cancel:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhotoRingScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/phone/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhotoRingScreen;->bUnregierShowme:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/PhotoRingScreen;->bShowOnly:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/PhotoRingScreen;->mIsShowMore16CharWarning:Z

    iput-boolean v2, p0, Lcom/android/phone/PhotoRingScreen;->mIsShowMoreCharWarning:Z

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setMaxLines(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/PhotoRingScreen;->bisExcuted:Z

    invoke-direct {p0}, Lcom/android/phone/PhotoRingScreen;->setPreviewInit()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method
