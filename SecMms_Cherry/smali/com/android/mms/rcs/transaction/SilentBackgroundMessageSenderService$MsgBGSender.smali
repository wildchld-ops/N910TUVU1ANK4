.class public Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;
.super Ljava/lang/Object;
.source "SilentBackgroundMessageSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgBGSender"
.end annotation


# instance fields
.field private mBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

.field private mChatId:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHideRcsMessage:Ljava/lang/Runnable;

.field private mMediaUri:Landroid/net/Uri;

.field private mMessage:Ljava/lang/String;

.field private mMessageUri:Landroid/net/Uri;

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mRCSMsgUri:Landroid/net/Uri;

.field private mRcsId:J

.field private mRecipients:[Ljava/lang/String;

.field private mResizable:Z

.field private mResizedata:[B

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mThreadId:J

.field final synthetic this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .locals 5

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mThreadId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mResizable:Z

    iput-wide v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRcsId:J

    const-string v0, "recipients"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->ContactRemoveInvalidChar(Ljava/util/ArrayList;)V

    const-string v0, "message"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "rcsUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRCSMsgUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/"

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "chatId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "chatId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mChatId:Ljava/lang/String;

    :cond_1
    const-string v0, "rcs_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRcsId:J

    new-instance v0, Lcom/android/mms/rcs/transaction/FallbackBundle;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRCSMsgUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mChatId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRcsId:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/rcs/transaction/FallbackBundle;-><init>(Landroid/net/Uri;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    iput-object p2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mHideRcsMessage:Ljava/lang/Runnable;

    return-void
.end method

.method private ContactRemoveInvalidChar(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v5, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendBGMessage()V

    return-void
.end method

.method private createNewSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v13

    div-int/2addr v12, v13

    add-int/lit8 v6, v12, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v12

    if-ge v2, v12, :cond_3

    const/4 v9, 0x0

    add-int/lit8 v12, v6, -0x1

    if-ne v2, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v13

    mul-int/2addr v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v13

    mul-int/2addr v13, v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v14

    mul-int/2addr v14, v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v12

    if-ge v2, v12, :cond_a

    const/4 v5, 0x0

    new-instance v12, Lcom/android/mms/model/SlideModel;

    invoke-direct {v12, v8}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v8, v2, v12}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v3, Lcom/android/mms/model/ImageModel;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v14

    invoke-direct {v3, v12, v13, v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cid:text_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Lcom/android/mms/model/TextModel;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    const-string v13, "text/plain"

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v14

    invoke-direct {v10, v12, v13, v4, v14}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    :cond_5
    invoke-virtual {v8, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v10, :cond_6

    :try_start_0
    invoke-virtual {v5, v10}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :cond_6
    if-nez v2, :cond_8

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    move-object v0, v3

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    :cond_7
    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v12, v3

    check-cast v12, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v11}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;ILandroid/net/Uri;)V

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mResizable:Z

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :cond_a
    return-object v8

    :catch_1
    move-exception v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v12, v3

    check-cast v12, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v11}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;ILandroid/net/Uri;)V

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mResizable:Z

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v12, v3

    check-cast v12, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v11}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;ILandroid/net/Uri;)V

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mResizable:Z

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private createNewThreadId()J
    .locals 9

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mChatId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "normal"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5

    array-length v0, p1

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_0
    return-void
.end method

.method private initMmsComponents()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->createNewThreadId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mThreadId:J

    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->makeSendReq()Lcom/google/android/mms/pdu/SendReq;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mSendReq:Lcom/google/android/mms/pdu/SendReq;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isRequreMMS(Landroid/net/Uri;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne v0, v3, :cond_1

    iget-object v4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    :goto_0
    if-nez p1, :cond_0

    aget v4, v1, v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    array-length v4, v4

    if-le v4, v3, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "try to send mms"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_1
    return v2

    :cond_1
    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "try to send sms"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeSendReq()Lcom/google/android/mms/pdu/SendReq;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v11

    iget-boolean v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mResizable:Z

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_1

    invoke-virtual {v11, v8}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "image/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mResizedata:[B

    invoke-virtual {v9, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v11}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    return-object v1
.end method

.method private resizeMedia(Lcom/android/mms/model/ImageModel;ILandroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No room to resize picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "part is null during resize media."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mResizedata:[B

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Lcom/android/mms/model/ImageModel;->setResizeImageSize(I)V

    return-void
.end method

.method private sendBGMessage()V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->isRequreMMS(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mHideRcsMessage:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mHideRcsMessage:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendSmsMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    invoke-direct {p0, v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendDeleteRCSRequest(Lcom/android/mms/rcs/transaction/FallbackBundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->initMmsComponents()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendMessage()V

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mHideRcsMessage:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mHideRcsMessage:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    invoke-direct {p0, v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendDeleteRCSRequest(Lcom/android/mms/rcs/transaction/FallbackBundle;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private sendDeleteRCSRequest(Lcom/android/mms/rcs/transaction/FallbackBundle;)V
    .locals 2

    sget-object v1, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method private sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 11

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v10, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v1

    int-to-long v3, v1

    invoke-direct {v10, v0, p1, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mChatId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "normal"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mThreadId:J

    :cond_2
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mThreadId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mThreadId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mThreadId:J

    invoke-interface {v10, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mThreadId:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendSmsMessage()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mChatId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "normal"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v9, v10, v0, v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendSmsWorker(Ljava/lang/String;[Ljava/lang/String;J)V

    return-void
.end method

.method private sendSmsWorker(Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 7

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p3, p4}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOrCreateThreadId chatId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_THREAD_BY_SESSION_ID:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    if-eqz p3, :cond_0

    const-string v1, "session_id"

    invoke-virtual {v11, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "subject"

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    if-eqz p7, :cond_2

    const-string v1, "type"

    move-object/from16 v0, p7

    invoke-virtual {v11, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const-string v1, "createthread"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p6, :cond_4

    const-string v1, "force_createthread"

    const-string v2, "true"

    invoke-virtual {v11, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v10}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_3
    const-string v1, "recipient"

    invoke-virtual {v11, v1, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_4
    const-string v1, "force_createthread"

    const-string v2, "false"

    invoke-virtual {v11, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_5
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->ID_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$300()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created Thread Id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    return-wide v1

    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    # getter for: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getOrCreateThreadId returned no rows!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz p5, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to find or allocate a thread ID."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :cond_a
    const-wide/16 v1, -0x1

    goto :goto_2
.end method
