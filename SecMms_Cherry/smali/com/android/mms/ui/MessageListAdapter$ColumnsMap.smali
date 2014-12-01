.class public Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnsMap"
.end annotation


# instance fields
.field public mColumnAcmsUid:I

.field public mColumnCmasServiceCategory:I

.field public mColumnDateSent:I

.field public mColumnFreeMessageBytesTransfer:I

.field public mColumnFreeMessageCancelReason:I

.field public mColumnFreeMessageContentType:I

.field public mColumnFreeMessageDateSent:I

.field public mColumnFreeMessageDisplayNotificationStatus:I

.field public mColumnFreeMessageDisplayedCounter:I

.field public mColumnFreeMessageFileName:I

.field public mColumnFreeMessageFilePath:I

.field public mColumnFreeMessageFileSize:I

.field public mColumnFreeMessageMediaId:I

.field public mColumnFreeMessageMessageType:I

.field public mColumnFreeMessageRecipients:I

.field public mColumnFreeMessageReserved:I

.field public mColumnFreeMessageSessionId:I

.field public mColumnFreeMessageThumbnailPath:I

.field public mColumnFreeMessageTransactionId:I

.field public mColumnMmsDate:I

.field public mColumnMmsDeliveryReport:I

.field public mColumnMmsErrorType:I

.field public mColumnMmsLocked:I

.field public mColumnMmsMessageBox:I

.field public mColumnMmsMessageType:I

.field public mColumnMmsMid:I

.field public mColumnMmsPriority:I

.field public mColumnMmsRead:I

.field public mColumnMmsReadReport:I

.field public mColumnMmsReserved:I

.field public mColumnMmsSubject:I

.field public mColumnMmsSubjectCharset:I

.field public mColumnMmsTextOnly:I

.field public mColumnMmsTrid:I

.field public mColumnMsgId:I

.field public mColumnMsgType:I

.field public mColumnRcsChatId:I

.field public mColumnRcsContentBytes_Transf:I

.field public mColumnRcsContentFileSize:I

.field public mColumnRcsContentID:I

.field public mColumnRcsContentREMOTE_URI:I

.field public mColumnRcsContentType:I

.field public mColumnRcsContentUri:I

.field public mColumnRcsDeliveredTimeStamp:I

.field public mColumnRcsDisplayedCounter:I

.field public mColumnRcsFTCancelReason:I

.field public mColumnRcsFTRejectReason:I

.field public mColumnRcsFtSessionId:I

.field public mColumnRcsImdnId:I

.field public mColumnRcsMessageType:I

.field public mColumnRcsNotificationStatus:I

.field public mColumnRcsReserved:I

.field public mColumnRcsServiceType:I

.field public mColumnRcsThumbNailPath:I

.field public mColumnRcsUserAlias:I

.field public mColumnRcsdbId:I

.field public mColumnSimImsi:I

.field public mColumnSimSlot:I

.field public mColumnSmsAddress:I

.field public mColumnSmsBody:I

.field public mColumnSmsCallback:I

.field public mColumnSmsDate:I

.field public mColumnSmsDateSent:I

.field public mColumnSmsErrorCode:I

.field public mColumnSmsGroupId:I

.field public mColumnSmsGroupType:I

.field public mColumnSmsLinkUrl:I

.field public mColumnSmsLocked:I

.field public mColumnSmsMmsSafeMessage:I

.field public mColumnSmsMmsSpamReport:I

.field public mColumnSmsPriority:I

.field public mColumnSmsRead:I

.field public mColumnSmsReserved:I

.field public mColumnSmsStatus:I

.field public mColumnSmsSvcCmd:I

.field public mColumnSmsSvcCmdContent:I

.field public mColumnSmsTeleserviceId:I

.field public mColumnSmsType:I

.field public mColumnThreadId:I

.field public mColumnWpmAction:I

.field public mColumnWpmCreated:I

.field public mColumnWpmHref:I

.field public mColumnWpmSiExpires:I

.field public mColumnWpmSiId:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/16 v5, 0x30

    const/16 v4, 0x2f

    const/16 v3, 0x28

    const/16 v2, 0x2d

    const/16 v1, 0x2b

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDateSent:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    const/16 v0, 0x1d

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCallback:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupId:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupType:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsPriority:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiId:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmCreated:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiExpires:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmAction:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsReserved:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReserved:I

    const/16 v0, 0x21

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsPriority:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTeleserviceId:I

    const/16 v0, 0x23

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLinkUrl:I

    const/16 v0, 0x24

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCmasServiceCategory:I

    const/16 v0, 0x25

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTextOnly:I

    const/16 v0, 0x26

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSvcCmd:I

    const/16 v0, 0x27

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSvcCmdContent:I

    iput v3, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsMmsSpamReport:I

    const/16 v0, 0x29

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSimSlot:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSimImsi:I

    iput v3, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnAcmsUid:I

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageSessionId:I

    const/16 v0, 0x2c

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageTransactionId:I

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageContentType:I

    const/16 v0, 0x2e

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageMediaId:I

    iput v4, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageBytesTransfer:I

    iput v5, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageFileSize:I

    const/16 v0, 0x31

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageCancelReason:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageFileName:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageThumbnailPath:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageFilePath:I

    const/16 v0, 0x35

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageMessageType:I

    const/16 v0, 0x36

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageDisplayNotificationStatus:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageDisplayedCounter:I

    const/16 v0, 0x38

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageReserved:I

    const/16 v0, 0x39

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageDateSent:I

    const/16 v0, 0x3a

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageRecipients:I

    const/16 v0, 0x38

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsReserved:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsdbId:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentUri:I

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentType:I

    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentREMOTE_URI:I

    iput v4, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentBytes_Transf:I

    iput v5, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentFileSize:I

    const/16 v0, 0x31

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsFTCancelReason:I

    const/16 v0, 0x41

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsFTRejectReason:I

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsFtSessionId:I

    const/16 v0, 0x36

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsNotificationStatus:I

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsChatId:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsThumbNailPath:I

    const/16 v0, 0x35

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsMessageType:I

    const/16 v0, 0x3d

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsUserAlias:I

    const/16 v0, 0x3b

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsImdnId:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsDisplayedCounter:I

    const/16 v0, 0x3e

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsDeliveredTimeStamp:I

    const/16 v0, 0x39

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnDateSent:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsServiceType:I

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsMmsSafeMessage:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/TimeChecker;

    invoke-direct {v0}, Lcom/android/mms/TimeChecker;-><init>()V

    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->start()V

    :try_start_0
    const-string v2, "transport_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v2, "thread_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string v2, "address"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    const-string v2, "group_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupId:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    const-string v2, "group_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupType:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    const-string v2, "body"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    const-string v2, "date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    const-string v2, "date_sent"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDateSent:I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    const-string v2, "status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    const-string v2, "locked"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    :try_start_c
    const-string v2, "read"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    const-string v2, "error_code"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    :goto_d
    :try_start_e
    const-string v2, "sub"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_e

    :goto_e
    :try_start_f
    const-string v2, "sub_cs"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    const-string v2, "m_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_10

    :goto_10
    :try_start_11
    const-string v2, "msg_box"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_11

    :goto_11
    :try_start_12
    const-string v2, "d_rpt"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    const-string v2, "rr"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_13

    :goto_13
    :try_start_14
    const-string v2, "err_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    const-string v2, "locked"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_15

    :goto_15
    :try_start_16
    const-string v2, "read"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_16

    :goto_16
    :try_start_17
    const-string v2, "href"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_17

    :goto_17
    :try_start_18
    const-string v2, "si_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiId:I
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_18

    :goto_18
    :try_start_19
    const-string v2, "created"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmCreated:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_19

    :goto_19
    :try_start_1a
    const-string v2, "si_expires"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiExpires:I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_1a

    :goto_1a
    :try_start_1b
    const-string v2, "action"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmAction:I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_1b

    :goto_1b
    :try_start_1c
    const-string v2, "callback_number"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCallback:I
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_1c

    :goto_1c
    :try_start_1d
    const-string v2, "reserved"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsReserved:I
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_1d

    :goto_1d
    :try_start_1e
    const-string v2, "reserved"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReserved:I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_1e

    :goto_1e
    :try_start_1f
    const-string v2, "reserved"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsReserved:I
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_1f

    :goto_1f
    :try_start_20
    const-string v2, "pri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsPriority:I
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_20

    :goto_20
    :try_start_21
    const-string v2, "pri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsPriority:I
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_21

    :goto_21
    :try_start_22
    const-string v2, "teleservice_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTeleserviceId:I
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_22

    :goto_22
    :try_start_23
    const-string v2, "link_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLinkUrl:I
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_23

    :goto_23
    :try_start_24
    const-string v2, "service_category"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCmasServiceCategory:I
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_24

    :goto_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_25
    const-string v2, "spam_report"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnAcmsUid:I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_25

    :goto_25
    :try_start_26
    const-string v2, "m_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMid:I
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_26} :catch_26

    :goto_26
    :try_start_27
    const-string v2, "tr_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTrid:I
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_27} :catch_27

    :cond_0
    :goto_27
    :try_start_28
    const-string v2, "text_only"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTextOnly:I
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_28} :catch_28

    :goto_28
    :try_start_29
    const-string v2, "svc_cmd"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSvcCmd:I
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_29} :catch_29

    :goto_29
    :try_start_2a
    const-string v2, "svc_cmd_content"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSvcCmdContent:I
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_2a

    :goto_2a
    :try_start_2b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "spam_report"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsMmsSpamReport:I
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2b} :catch_2b

    :cond_1
    :goto_2b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_2c
    const-string v2, "sim_slot"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSimSlot:I
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_2c} :catch_2c

    :goto_2c
    :try_start_2d
    const-string v2, "sim_imsi"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSimImsi:I
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_2d} :catch_2d

    :cond_2
    :goto_2d
    :try_start_2e
    const-string v2, "session_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageSessionId:I
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_2e} :catch_2e

    :goto_2e
    :try_start_2f
    const-string v2, "transaction_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageTransactionId:I
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_2f} :catch_2f

    :goto_2f
    :try_start_30
    const-string v2, "content_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageContentType:I
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_30} :catch_30

    :goto_30
    :try_start_31
    const-string v2, "media_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageMediaId:I
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_31} :catch_31

    :goto_31
    :try_start_32
    const-string v2, "bytes_transf"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageBytesTransfer:I
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_32} :catch_32

    :goto_32
    :try_start_33
    const-string v2, "file_size"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageFileSize:I
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_33} :catch_33

    :goto_33
    :try_start_34
    const-string v2, "cancel_reason"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageCancelReason:I
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_34} :catch_34

    :goto_34
    :try_start_35
    const-string v2, "file_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageFileName:I
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_35} :catch_35

    :goto_35
    :try_start_36
    const-string v2, "thumbnail_path"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageThumbnailPath:I
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_36} :catch_36

    :goto_36
    :try_start_37
    const-string v2, "file_path"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageFilePath:I
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_37} :catch_37

    :goto_37
    :try_start_38
    const-string v2, "message_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageMessageType:I
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_38} :catch_38

    :goto_38
    :try_start_39
    const-string v2, "display_notification_status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageDisplayNotificationStatus:I
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_39} :catch_39

    :goto_39
    :try_start_3a
    const-string v2, "displayed_counter"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageDisplayedCounter:I
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3a} :catch_3a

    :goto_3a
    :try_start_3b
    const-string v2, "reserved"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageReserved:I
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3b} :catch_3b

    :goto_3b
    :try_start_3c
    const-string v2, "date_sent"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageDateSent:I
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3c} :catch_3c

    :goto_3c
    :try_start_3d
    const-string v2, "recipients"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageRecipients:I
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_3d} :catch_3d

    :goto_3d
    :try_start_3e
    const-string v2, "rcsdb_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsdbId:I
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_3e} :catch_3e

    :goto_3e
    :try_start_3f
    const-string v2, "file_path"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentUri:I
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_3f} :catch_3f

    :goto_3f
    :try_start_40
    const-string v2, "content_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentType:I
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_40} :catch_40

    :goto_40
    :try_start_41
    const-string v2, "remote_uri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentREMOTE_URI:I
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_41} :catch_41

    :goto_41
    :try_start_42
    const-string v2, "bytes_transf"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentBytes_Transf:I
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_42} :catch_42

    :goto_42
    :try_start_43
    const-string v2, "file_size"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsContentFileSize:I
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_43} :catch_43

    :goto_43
    :try_start_44
    const-string v2, "cancel_reason"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsFTCancelReason:I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_44} :catch_44

    :goto_44
    :try_start_45
    const-string v2, "reject_reason"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsFTRejectReason:I
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_45} :catch_45

    :goto_45
    :try_start_46
    const-string v2, "session_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsFtSessionId:I
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_46} :catch_46

    :goto_46
    :try_start_47
    const-string v2, "display_notification_status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsNotificationStatus:I
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_47} :catch_47

    :goto_47
    :try_start_48
    const-string v2, "session_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsChatId:I
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_48} :catch_48

    :goto_48
    :try_start_49
    const-string v2, "thumbnail_path"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsThumbNailPath:I
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_49} :catch_49

    :goto_49
    :try_start_4a
    const-string v2, "message_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsMessageType:I
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_4a} :catch_4a

    :goto_4a
    :try_start_4b
    const-string v2, "user_alias"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsUserAlias:I
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_4b} :catch_4b

    :goto_4b
    :try_start_4c
    const-string v2, "imdn_message_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsImdnId:I
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_4c} :catch_4c

    :goto_4c
    :try_start_4d
    const-string v2, "displayed_counter"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsDisplayedCounter:I
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_4d} :catch_4d

    :goto_4d
    :try_start_4e
    const-string v2, "delivered_timestamp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsDeliveredTimeStamp:I
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_4e} :catch_4e

    :goto_4e
    :try_start_4f
    const-string v2, "date_sent"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnDateSent:I
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_4f} :catch_4f

    :goto_4f
    :try_start_50
    const-string v2, "service_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsServiceType:I
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_50} :catch_50

    :goto_50
    :try_start_51
    const-string v2, "safe_message"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsMmsSafeMessage:I
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_51} :catch_51

    :goto_51
    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->end()Ljava/lang/String;

    const-string v2, "Mms/MessageListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init columnmap done!,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mms/TimeChecker;->getElapsed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_5
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_6
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_7
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_8
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_9
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_a
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_b
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_c
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_d
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_e
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_f
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :catch_10
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :catch_11
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :catch_12
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :catch_13
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_14
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :catch_15
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :catch_16
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :catch_17
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :catch_18
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :catch_19
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    :catch_1a
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :catch_1b
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    :catch_1c
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :catch_1d
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :catch_1e
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :catch_1f
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    :catch_20
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :catch_21
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :catch_22
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :catch_23
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :catch_24
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    :catch_25
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    :catch_26
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    :catch_27
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    :catch_28
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :catch_29
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    :catch_2a
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    :catch_2b
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    :catch_2c
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    :catch_2d
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    :catch_2e
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    :catch_2f
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    :catch_30
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    :catch_31
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :catch_32
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :catch_33
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    :catch_34
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    :catch_35
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    :catch_36
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    :catch_37
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :catch_38
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    :catch_39
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_39

    :catch_3a
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    :catch_3b
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    :catch_3c
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    :catch_3d
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :catch_3e
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    :catch_3f
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    :catch_40
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :catch_41
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41

    :catch_42
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_42

    :catch_43
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :catch_44
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44

    :catch_45
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45

    :catch_46
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_46

    :catch_47
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_47

    :catch_48
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48

    :catch_49
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    :catch_4a
    move-exception v1

    const-string v2, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4a

    :catch_4b
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    :catch_4c
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4c

    :catch_4d
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    :catch_4e
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e

    :catch_4f
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f

    :catch_50
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    :catch_51
    move-exception v1

    const-string v2, "closeMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_51
.end method
