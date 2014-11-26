.class public Lcom/android/mms/oem/AutoSendingTestActivity;
.super Landroid/app/Activity;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/oem/AutoSendingTestActivity$FindButtonOnClick;,
        Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;,
        Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;
    }
.end annotation


# static fields
.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio/"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/"

.field private static final MENU_PICK_AUDIO:I = 0x5

.field private static final MENU_PICK_PICTURE:I = 0x1

.field private static final MENU_PICK_VIDEO:I = 0x3

.field private static final MENU_RECORD_AUDIO:I = 0x6

.field private static final MENU_RECORD_VIDEO:I = 0x4

.field private static final MENU_TAKE_PICTURE:I = 0x2

.field private static final REQUEST_CODE_PICK_AUDIO:I = 0x5

.field private static final REQUEST_CODE_PICK_PICTURE:I = 0x1

.field private static final REQUEST_CODE_PICK_VIDEO:I = 0x3

.field private static final REQUEST_CODE_RECORD_AUDIO:I = 0x6

.field private static final REQUEST_CODE_RECORD_VIDEO:I = 0x4

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x2

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video/"

.field private static alertDialog:Landroid/app/AlertDialog;

.field private static mDialogPassword:Landroid/app/Dialog;


# instance fields
.field private DEFAULT_COUNT:I

.field private DEFAULT_DELAY_MMS:I

.field private DEFAULT_DELAY_SMS:I

.field private TAG:Ljava/lang/String;

.field private bSendingFlag:Z

.field private mBtAttach:Landroid/widget/Button;

.field private mButtonFind:Landroid/widget/Button;

.field private mCbAutoNum:Landroid/widget/CheckBox;

.field private mCbAutoTag:Landroid/widget/CheckBox;

.field private mCbMMS:Landroid/widget/CheckBox;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditContent:Landroid/widget/EditText;

.field private mEditCount:Landroid/widget/EditText;

.field private mEditDelay:Landroid/widget/EditText;

.field private mEditRecipient:Landroid/widget/EditText;

.field private mEditSender:Landroid/widget/EditText;

.field private mMediaUri:Landroid/net/Uri;

.field private mMessage:Ljava/lang/String;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mbtnSend:Landroid/widget/Button;

.field private mtextViewCount:Landroid/widget/TextView;

.field private mtextViewDelay:Landroid/widget/TextView;

.field private strSenderNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "AutoSending"

    iput-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->bSendingFlag:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_COUNT:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_MMS:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/oem/AutoSendingTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/oem/AutoSendingTestActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->createRecipientDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/oem/AutoSendingTestActivity;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->getAddressPreference()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/oem/AutoSendingTestActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V
    .locals 0
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;
    .param p1    # Landroid/net/Uri;
    .param p2    # Lcom/google/android/mms/pdu/PduPersister;
    .param p3    # Lcom/android/mms/model/SlideshowModel;
    .param p4    # Lcom/google/android/mms/pdu/SendReq;
    .param p5    # J

    invoke-direct/range {p0 .. p6}, Lcom/android/mms/oem/AutoSendingTestActivity;->sendMmsWorker(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0    # Landroid/app/Dialog;

    sput-object p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/oem/AutoSendingTestActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    iget-boolean v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->bSendingFlag:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/oem/AutoSendingTestActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->startSendMessage()V

    return-void
.end method

.method static synthetic access$900()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/oem/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Landroid/app/AlertDialog;

    sput-object p0, Lcom/android/mms/oem/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 4
    .param p0    # Lcom/google/android/mms/pdu/PduPersister;
    .param p1    # Lcom/google/android/mms/pdu/SendReq;
    .param p2    # Lcom/android/mms/model/SlideshowModel;

    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createNewSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    new-instance v4, Lcom/android/mms/model/SlideModel;

    invoke-direct {v4, v5}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v5, v4}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v3, Lcom/android/mms/model/ImageModel;

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v3, v7, v8, v9}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    if-eqz v7, :cond_1

    new-instance v6, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    const-string v9, "cid:text_1.txt"

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v5, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v6}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :cond_2
    if-eqz v3, :cond_4

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_4
    :goto_1
    return-object v5

    :cond_5
    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v8, "video/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v3, Lcom/android/mms/model/VideoModel;

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v3, v7, v8, v9}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v8, "audio/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v3, Lcom/android/mms/model/AudioModel;

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v3, v7, v8}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v3

    check-cast v7, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/oem/AutoSendingTestActivity;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    invoke-virtual {v5, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v3

    check-cast v7, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/oem/AutoSendingTestActivity;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    invoke-virtual {v5, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    iget-object v7, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v3

    check-cast v7, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/mms/oem/AutoSendingTestActivity;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    invoke-virtual {v5, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto/16 :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private createRecipientDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Select Numbers"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->getAddressPreference()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/mms/oem/AutoSendingTestActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/oem/AutoSendingTestActivity$5;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private getAddressPreference()[Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "Address"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 4

    const-string v0, "mms.kor.autosending.history"

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const-string v2, "mms.kor.autosending.history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    const v1, 0x7f0b008d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mtextViewDelay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mtextViewDelay:Landroid/widget/TextView;

    const-string v2, "Delay(ms)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b008a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mtextViewCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mtextViewCount:Landroid/widget/TextView;

    const-string v2, "Count"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0084

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    const-string v2, "Sender"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b007e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditContent:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditContent:Landroid/widget/EditText;

    const-string v2, "Auto Testing"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b008b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditCount:Landroid/widget/EditText;

    const v1, 0x7f0b008e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mbtnSend:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mbtnSend:Landroid/widget/Button;

    const-string v2, "Send"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mbtnSend:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/oem/AutoSendingTestActivity$SendButtonOnClick;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;Lcom/android/mms/oem/AutoSendingTestActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0085

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    const-string v2, "Auto Increasing Numbers"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0088

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoTag:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoTag:Landroid/widget/CheckBox;

    const-string v2, "Auto Tag"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    const-string v2, "MMS"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0082

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    const-string v2, "Recipient"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mButtonFind:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mButtonFind:Landroid/widget/Button;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mButtonFind:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/oem/AutoSendingTestActivity$FindButtonOnClick;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/oem/AutoSendingTestActivity$FindButtonOnClick;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;Lcom/android/mms/oem/AutoSendingTestActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mButtonFind:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/oem/AutoSendingTestActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/oem/AutoSendingTestActivity$1;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0b0090

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/oem/AutoSendingTestActivity$AttachButtonOnClick;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;Lcom/android/mms/oem/AutoSendingTestActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->bSendingFlag:Z

    return-void
.end method

.method private static makeSendReq([Ljava/lang/String;)Lcom/google/android/mms/pdu/SendReq;
    .locals 6
    .param p0    # [Ljava/lang/String;

    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    invoke-static {p0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    return-object v1
.end method

.method private onClickedIsMMS(Landroid/widget/CheckBox;)V
    .locals 5
    .param p1    # Landroid/widget/CheckBox;

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_MMS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_MMS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private resizeMedia(Lcom/android/mms/model/ImageModel;I)V
    .locals 5
    .param p1    # Lcom/android/mms/model/ImageModel;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/mms/ui/UriImage;

    iget-object v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4, p2}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p1, v3}, Lcom/android/mms/model/ImageModel;->setResizeImageSize(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v4, "exception : NullPointerException @ resizeMedia"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v4, "exception : IllegalArgumentException @ resizeMedia"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveAddressPreference(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "Address"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_2

    aget-object v6, v3, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Address"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    const-string v6, "Address"

    invoke-interface {v0, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method private sendMmsWorker(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V
    .locals 5
    .param p1    # Landroid/net/Uri;
    .param p2    # Lcom/google/android/mms/pdu/PduPersister;
    .param p3    # Lcom/android/mms/model/SlideshowModel;
    .param p4    # Lcom/google/android/mms/pdu/SendReq;
    .param p5    # J

    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :try_start_0
    invoke-interface {v1, p5, p6}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showDialogPassword(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;

    sget-object v7, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    if-nez v7, :cond_0

    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f040069

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0b0211

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0b0213

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f0b0214

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v7, 0x7f0b0216

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v7, 0x7f0b0215

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const-string v7, "password"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "only use in debug mode fot test."

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0c004d

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0c004e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, ""

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v7, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    new-instance v8, Lcom/android/mms/oem/AutoSendingTestActivity$2;

    invoke-direct {v8, p0}, Lcom/android/mms/oem/AutoSendingTestActivity$2;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v7, Lcom/android/mms/oem/AutoSendingTestActivity$3;

    invoke-direct {v7, p0, v0}, Lcom/android/mms/oem/AutoSendingTestActivity$3;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/mms/oem/AutoSendingTestActivity$4;

    invoke-direct {v7, p0}, Lcom/android/mms/oem/AutoSendingTestActivity$4;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v7, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget-object v7, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget-object v7, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    sget-object v7, Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method private startSendMessage()V
    .locals 25

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v12, "Auto Testing"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v23, 0x0

    :goto_0
    array-length v2, v11

    move/from16 v0, v23

    if-ge v0, v2, :cond_0

    aget-object v2, v11, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->saveAddressPreference(Ljava/lang/String;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v19, "Auto Testing"

    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditCount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditCount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    :cond_3
    const/16 v2, 0x3e8

    move/from16 v0, v18

    if-le v0, v2, :cond_4

    const/16 v18, 0x3e7

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->bSendingFlag:Z

    const/16 v23, 0x1

    :goto_1
    add-int/lit8 v2, v18, 0x1

    move/from16 v0, v23

    if-ge v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbAutoTag:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contentStr.length() : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    move-object/from16 v24, v17

    goto :goto_2

    :cond_7
    move-object/from16 v12, v19

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    invoke-static {v11}, Lcom/android/mms/oem/AutoSendingTestActivity;->makeSendReq([Ljava/lang/String;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5, v6, v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v4

    new-instance v10, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/oem/AutoSendingTestActivity$6;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/oem/AutoSendingTestActivity$6;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;J)V

    invoke-direct {v10, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    int-to-long v2, v2

    cmp-long v2, v20, v2

    if-gez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    :cond_a
    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_b
    new-instance v9, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const/16 v15, 0x81

    move-wide v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    :try_start_2
    invoke-interface {v9, v7, v8}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v3, "e : "

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception v16

    const-string v2, "Guava"

    const-string v3, "Exception"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    sget-object v2, Lcom/android/mms/oem/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/mms/oem/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/mms/oem/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/oem/AutoSendingTestActivity;->bSendingFlag:Z

    goto/16 :goto_4
.end method

.method private startSendMessage(Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v0, "address"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "sms_body"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMessage : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mContentType : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMediaUri : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-static {v8}, Lcom/android/mms/oem/AutoSendingTestActivity;->makeSendReq([Ljava/lang/String;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3, v4, v0}, Lcom/android/mms/oem/AutoSendingTestActivity;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v2

    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/oem/AutoSendingTestActivity$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/oem/AutoSendingTestActivity$7;-><init>(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;J)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public AttachButtonChange(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    const-string v1, "PICTURE Attached"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    const-string v1, "VIDEO Attached"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    const-string v1, "AUDIO Attached"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/mms/oem/AutoSendingTestActivity;->onClickedIsMMS(Landroid/widget/CheckBox;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/oem/AutoSendingTestActivity;->AttachButtonChange(I)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    const-string v1, "image/"

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    const-string v1, "uri-data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_0

    const-string v1, "video/"

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_3
    if-eqz p3, :cond_0

    const-string v1, "audio/"

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v1, "FILE_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_0

    const-string v1, "audio/"

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/oem/AutoSendingTestActivity;->onClickedIsMMS(Landroid/widget/CheckBox;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v3, " onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f040022

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/mms/oem/AutoSendingTestActivity;->init()V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditCount:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_COUNT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "debug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->showDialogPassword(Landroid/content/Context;)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1    # Landroid/view/MenuItem;

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "image/*"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "return-uri"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v5, 0x2

    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "video/*"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    int-to-long v3, v5

    const-string v5, "android.intent.extra.videoQuality"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "mms"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v5, 0x4

    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "FOLDERPATH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Sounds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "CONTENT_TYPE"

    const-string v6, "audio/*"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x5

    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    int-to-long v1, v5

    const-string v5, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "mime_type"

    const-string v6, "audio/amr"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x6

    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x1

    const-string v1, "PICTURE"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const-string v1, "TAKE PICTURE"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const-string v1, "VIDEO"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const-string v1, "RECORD VIDEO"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const-string v1, "AUDIO"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x6

    const-string v1, "RECORD AUDIO"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
