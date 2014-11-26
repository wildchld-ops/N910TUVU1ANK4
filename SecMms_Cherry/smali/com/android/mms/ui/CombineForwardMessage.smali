.class public Lcom/android/mms/ui/CombineForwardMessage;
.super Ljava/lang/Object;
.source "CombineForwardMessage.java"


# static fields
.field public static final COMBINE_AND_FORWARD_LEVEL:I = 0x1

.field public static final COMBINE_AND_FORWARD_MESSAGE_PHASE1:I = 0x1

.field public static final COMBINE_AND_FORWARD_MESSAGE_PHASE2:I = 0x2

.field private static final FWD_EXCEEDSIZE_ERR:I = 0x1

.field private static final FWD_EXCEEDSLIDENUM_ERR:I = 0x2

.field private static final FWD_NOERR:I = 0x0

.field private static final OFF_TEXT_MMS_MSG:I = 0x258

.field private static final OFF_TEXT_MMS_SLIDE:I = 0xa

.field private static final OFF_TEXT_MMS_SUBJECT:I = 0x384

.field private static final OFF_TEXT_SMS_MSG:I = 0x64

.field public static final SELECTION_MODE_FOR_COMBINE_AND_FORWARD:I = 0x1

.field public static final SORT_ORDER_DATE_ASC:Ljava/lang/String; = "date ASC"

.field public static final SORT_ORDER_DATE_DESC:Ljava/lang/String; = "date DESC"

.field private static final TAG:Ljava/lang/String; = "Mms/CombineMessage"


# instance fields
.field private fwdErrCause:I

.field private fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
    .param p2    # Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I

    iput-object p2, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private combineAndForwardSMS(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/FwdMsgIdentifier;",
            ">;)V"
        }
    .end annotation

    const-string v8, "Mms/CombineMessage"

    const-string v9, "combineAndForwardSMS"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    const-string v2, ""

    const-string v7, ""

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/FwdMsgIdentifier;

    iput-object v8, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    iget-object v8, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v8}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgId()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const-string v9, "sms"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItemPublic(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/CombineForwardMessage;->getMessageSender(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Mms/CombineMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msgBody="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",msgSender="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "Mms/CombineMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msgBodySum="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Mms/CombineMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invoke forward (1)\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/CombineForwardMessage;->forwardMessageSms(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private combineAndForwardSMSMMS(Ljava/util/ArrayList;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/FwdMsgIdentifier;",
            ">;)V"
        }
    .end annotation

    const-string v3, "Mms/CombineMessage"

    const-string v4, "combineAndForwardSMSMMS"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v19, ""

    const-string v23, ""

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v28

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v9, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/FwdMsgIdentifier;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v3}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgId()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v3}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgType()I

    move-result v17

    const-string v3, "Mms/CombineMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FWD INCLUDE MMS, index="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mType[SMS-1, MMS-2]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v17, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const-string v4, "sms"

    const/4 v6, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItemPublic(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/ui/CombineForwardMessage;->getMessageSender(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    new-instance v33, Lcom/android/mms/model/TextModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-string v4, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v13, 0x64

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    new-instance v24, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const-string v4, "mms"

    const/4 v6, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItemPublic(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v22

    if-eqz v22, :cond_0

    if-nez v5, :cond_1

    move-object/from16 v5, v22

    :cond_1
    new-instance v33, Lcom/android/mms/model/TextModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-string v4, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v13, 0xa

    add-int/lit16 v7, v7, 0x384

    add-int/lit16 v7, v7, 0x258

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/ui/CombineForwardMessage;->getMessageSender(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    new-instance v25, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v30

    if-ge v12, v0, :cond_4

    new-instance v24, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/mms/model/SlideModel;

    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v32

    const/16 v16, 0x0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v33, Lcom/android/mms/model/TextModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-string v4, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v13, 0xa

    add-int/2addr v7, v12

    add-int/lit16 v7, v7, 0x258

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    check-cast v18, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_4

    :cond_3
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v10, :cond_0

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    const-string v3, "Mms/CombineMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slideShowTotal size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v3

    move/from16 v0, v26

    if-le v0, v3, :cond_7

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I

    :cond_6
    :goto_6
    return-void

    :cond_7
    if-eqz v5, :cond_6

    move-object/from16 v0, v29

    iput-object v0, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    iget-object v8, v5, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    const/4 v3, 0x1

    move/from16 v0, v26

    if-le v0, v3, :cond_8

    const/4 v14, 0x0

    :goto_7
    const/4 v3, 0x0

    invoke-virtual {v2, v14, v5, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    goto :goto_6

    :cond_8
    const/4 v14, 0x1

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findSelectedMsgId(Landroid/database/Cursor;ILcom/android/mms/ui/MessageListAdapter;Ljava/util/ArrayList;)V
    .locals 11
    .param p1    # Landroid/database/Cursor;
    .param p2    # I
    .param p3    # Lcom/android/mms/ui/MessageListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Lcom/android/mms/ui/MessageListAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/FwdMsgIdentifier;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-lez p2, :cond_3

    :cond_0
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    const/16 v6, 0x40

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    :goto_0
    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p3, v5, v1, v2, p1}, Lcom/android/mms/ui/MessageListAdapter;->canCachedMessageItemBeCombineForwarded(Ljava/lang/String;JLandroid/database/Cursor;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    return-void

    :cond_4
    const/4 v4, -0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-direct {v0}, Lcom/android/mms/ui/FwdMsgIdentifier;-><init>()V

    const-string v6, "sms"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/FwdMsgIdentifier;->setMsgId(J)V

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/FwdMsgIdentifier;->setMsgType(I)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "Mms/CombineMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS :: mFwdSelectedMsgIds.add::msgId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private forwardMessageSms(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getCursorMessageItems()Landroid/database/Cursor;
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :goto_0
    return-object v7

    :cond_0
    move-object v7, v4

    goto :goto_0
.end method

.method private getMessageSender(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public forwardCombineMessage(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 11
    .param p1    # Lcom/android/mms/ui/MessageListAdapter;

    const-string v7, "Mms/CombineMessage"

    const-string v8, "combineAndForwardMessage()"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const-string v7, "Mms/CombineMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "combineAndForwardMessage(), mFwdListMsgCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/CombineForwardMessage;->getCursorMessageItems()Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    return-void

    :cond_0
    throw v1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/android/mms/ui/CombineForwardMessage;->findSelectedMsgId(Landroid/database/Cursor;ILcom/android/mms/ui/MessageListAdapter;Ljava/util/ArrayList;)V

    :cond_2
    const-string v7, "Mms/CombineMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mFwdSelectedMsgIds.size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0162

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/FwdMsgIdentifier;

    iput-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    const-string v7, "Mms/CombineMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fwdIdentifier:msgId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v9}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",fwdIdentifier:msgType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v9}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v7}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v5, :cond_7

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CombineForwardMessage;->combineAndForwardSMS(Ljava/util/ArrayList;)V

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I

    packed-switch v7, :pswitch_data_0

    :cond_6
    :goto_5
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v7

    :cond_7
    const/4 v7, 0x0

    :try_start_2
    iput v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/mms/ui/CombineForwardMessage;->combineAndForwardSMSMMS(Ljava/util/ArrayList;)V
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v4

    const/4 v7, 0x1

    :try_start_4
    iput v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I

    goto :goto_4

    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MessageListAdapter;->setCombineAndForwardMode(Z)V

    goto :goto_5

    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0194

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :pswitch_2
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0178

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
