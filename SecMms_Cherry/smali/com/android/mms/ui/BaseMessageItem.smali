.class public Lcom/android/mms/ui/BaseMessageItem;
.super Ljava/lang/Object;
.source "BaseMessageItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field private final mBoxId:I

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mGroupId:J

.field mGroupType:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field final mMsgId:J

.field mRecipientIds:Ljava/lang/String;

.field mRecipients:Ljava/lang/String;

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field final mThreadId:J

.field mTime:J

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Mms/ConversationMessageItem"

    sput-object v0, Lcom/android/mms/ui/BaseMessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/BaseMessageItem;->mGroupId:J

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mGroupType:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    const-string v18, "sms"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v18

    if-eqz v18, :cond_1

    const v18, 0x7f0c000d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/ui/BaseMessageItem;->mContact:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDateSent:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_3

    move-wide v4, v6

    :goto_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v18

    if-nez v18, :cond_0

    const v18, 0x7f0c000f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, ""

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_3
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_1

    :cond_4
    const-string v18, "mms"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    sget-object v18, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mMessageType:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    new-instance v17, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v13

    const/16 v18, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageType:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    :cond_6
    :goto_4
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v18

    if-nez v18, :cond_0

    const v18, 0x7f0c000f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v12

    check-cast v12, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0c0016

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v8

    sget-object v18, Lcom/android/mms/ui/BaseMessageItem;->TAG:Ljava/lang/String;

    const-string v19, "MMS has zero slides"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "im"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "im"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    :cond_b
    sget-object v18, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mMessageUri:Landroid/net/Uri;

    const-string v18, "type"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageDateSent:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageRecipients:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mRecipients:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v18

    if-nez v18, :cond_d

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    const v18, 0x7f0c000f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    goto :goto_5

    :cond_d
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    const v18, 0x7f0c000f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v18

    if-eqz v18, :cond_f

    const-string v18, "ft"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v18

    if-eqz v18, :cond_12

    const-string v18, "ft"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    :cond_10
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    sget-object v18, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageDateSent:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageFileName:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v18

    if-nez v18, :cond_11

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    const v18, 0x7f0c000f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    const v18, 0x7f0c000f

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    new-instance v18, Lcom/google/android/mms/MmsException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown type of the message: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v18
.end method


# virtual methods
.method public getBoxId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupType:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    goto :goto_0
.end method

.method public getMsgId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    return-wide v0
.end method

.method public isFreeMessageChat()Z
    .locals 2

    const-string v0, "im"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFreeMessageFT()Z
    .locals 2

    const-string v0, "ft"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGroupSms()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    iget-wide v2, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMms()Z
    .locals 2

    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 9

    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->getBoxId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isMms()Z

    move-result v7

    if-eqz v7, :cond_3

    if-ne v0, v8, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isSms()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x5

    if-eq v0, v7, :cond_0

    if-eq v0, v8, :cond_0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_4

    :cond_0
    move v4, v5

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isFreeMessageChat()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eq v0, v5, :cond_5

    move v1, v5

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isFreeMessageFT()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eq v0, v5, :cond_6

    move v2, v5

    :goto_3
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v6, v5

    :cond_2
    return v6

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_1

    :cond_5
    move v1, v6

    goto :goto_2

    :cond_6
    move v2, v6

    goto :goto_3
.end method

.method public isSms()Z
    .locals 2

    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
