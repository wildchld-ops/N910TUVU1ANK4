.class public Lcom/android/mms/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final DEFAULT_EXPIRY_TIME:J = 0x93a80L

.field private static final DEFAULT_MESSAGE_CLASS:Ljava/lang/String; = "personal"

.field private static final DEFAULT_PRIORITY:I = 0x81

.field private static final DEFAULT_READ_REPORT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static final mInsertedSimNum:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessageSize:J

.field private final mMessageUri:Landroid/net/Uri;

.field private mPriority:I

.field private mPriorityLevel:I

.field protected mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/transaction/MmsMessageSender;->mInsertedSimNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x81

    iput v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriority:I

    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JI)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # J
    .param p5    # I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iput p5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriority:I

    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V
    .locals 21
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Ljava/lang/String;
    .param p6    # I

    const-string v3, "Mms:transaction"

    const-string v4, "[MmsMessageSender] sendReadRec"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v7, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v4, v7, v3

    :try_start_0
    new-instance v2, Lcom/google/android/mms/pdu/ReadRecInd;

    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v4, "insert-address-token"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x12

    move/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v10, v19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v3

    if-nez v3, :cond_5

    move/from16 v10, p2

    :cond_0
    :goto_0
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsMessageSender] sendReadRec mCheckSimSlot is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/android/mms/transaction/MmsMessageSender;->mInsertedSimNum:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    sget-object v11, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v2

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;ZZLjava/util/HashMap;Z)Landroid/net/Uri;

    :goto_1
    const/16 v18, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    new-instance v18, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/TransactionServiceSecondary;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "sim-slot"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_3
    const-string v3, "Mms:transaction"

    const-string v4, "[MmsMessageSender] sendReadRec"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v20

    sget v3, Lcom/android/mms/transaction/MmsMessageSender;->mInsertedSimNum:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    move/from16 v10, p2

    const-string v3, "Mms:transaction"

    const-string v4, "[MmsMessageSender] sendReadRec  DataSwitch true"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v17

    const-string v3, "Mms:transaction"

    const-string v4, "[MmsMessageSender] Invalide header value"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    sget-object v13, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v15

    const/16 v16, 0x0

    move-object v12, v2

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v17

    const-string v3, "Mms:transaction"

    const-string v4, "[MmsMessageSender] Persist message failed"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    :try_start_3
    new-instance v18, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v17

    const-string v3, "Mms:transaction"

    const-string v4, "[MmsMessageSender] Invalid message ID value"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 30
    .param p0    # Landroid/content/Context;
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/data/ReadReportData;",
            ">;I)V"
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v13

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v19, v0

    const-string v26, "Mms:transaction"

    const-string v27, "[MmsMessageSender] sendReadRec by DataMap"

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v26, "persist.sys.dataprefer.simid"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/data/ReadReportData;

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getRecvAddress()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v27, v19, v26

    new-instance v16, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    const-string v26, "personal"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v26

    move-object/from16 v0, v16

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v26

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    :cond_1
    const/16 v26, 0x81

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    const/16 v26, 0x81

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    const/16 v26, 0x80

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/16 v26, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getSubject()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/ReadReportData;->makeReadReportSubject(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v26, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    const/16 v26, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getRecvTime()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getMmsSize()J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/ReadReportData;->makeReadReport(Landroid/content/Context;IIJ)Ljava/lang/String;

    move-result-object v18

    :goto_1
    new-instance v15, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v15}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    const-string v21, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    new-instance v22, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    const-string v26, "smil.txt"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    const-string v26, "smil.txt"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    const-string v26, "application/smil"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    new-instance v14, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    const-string v26, "attach.txt"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    const-string v26, "attach.txt"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    const/16 v26, 0x6a

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    const-string v26, "text/plain"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    invoke-virtual {v15, v14}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v26

    if-eqz v26, :cond_2

    sget v26, Lcom/android/mms/transaction/MmsMessageSender;->mInsertedSimNum:I

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v26

    if-nez v26, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v26

    if-eqz v26, :cond_7

    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getSimSlot()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUseDataSwitchDialog()Z

    move-result v26

    if-eqz v26, :cond_4

    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    const-string v26, "Mms:transaction"

    const-string v27, "[MmsMessageSender] sendReadRec  DataSwitch true"

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v26, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    const/4 v7, 0x1

    :goto_2
    sget-object v26, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v13, v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v24

    :goto_3
    sget-object v26, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v26, "Mms:transaction"

    const-string v27, "[MmsMessageSender] Invalide header value"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :cond_5
    const/16 v26, 0x1

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getSubject()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/ReadReportData;->makeReadReportSubject(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v26, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    const/16 v26, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getRecvTime()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ReadReportData;->getMmsSize()J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/ReadReportData;->makeReadReport(Landroid/content/Context;IIJ)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    sget-object v26, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v24

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v26

    if-nez v26, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v26

    if-eqz v26, :cond_d

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v26

    if-nez v26, :cond_d

    if-eqz v7, :cond_d

    new-instance v11, Landroid/content/Intent;

    const-class v26, Lcom/android/mms/transaction/TransactionServiceSecondary;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v26

    if-eqz v26, :cond_a

    sget v26, Lcom/android/mms/transaction/MmsMessageSender;->mInsertedSimNum:I

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v26

    if-nez v26, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v26

    if-eqz v26, :cond_f

    :cond_b
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v6, v0, :cond_e

    const-string v26, "sim-slot"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_c
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v26, "Mms:transaction"

    const-string v27, "[MmsMessageSender] sendReadRec  : TransactionService enabled."

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_4

    :catch_1
    move-exception v8

    const-string v26, "Mms:transaction"

    const-string v27, "[MmsMessageSender] Persist message failed"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_d
    :try_start_2
    new-instance v11, Landroid/content/Intent;

    const-class v26, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_5

    :cond_e
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_c

    const-string v26, "sim-slot"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v8

    const-string v26, "Mms:transaction"

    const-string v27, "[MmsMessageSender] Invalid message ID value"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_f
    :try_start_3
    const-string v26, "sim-slot"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v26, Landroid/content/Intent;

    const-class v27, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 11
    .param p1    # Lcom/google/android/mms/pdu/SendReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/16 v4, 0x80

    const/4 v8, 0x0

    const/16 v5, 0x81

    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriorityLevel:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long v3, v6, v9

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getExpiryTimeLong(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "pref_key_mms_delivery_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    const-string v3, "pref_key_mms_read_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDeliveryTime()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsDeliveryTimeLong(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsDeliveryTimeLong(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryTime(J)V

    :cond_2
    return-void

    :pswitch_0
    const-string v3, "pref_key_mms_priority"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    :pswitch_1
    const-string v3, "pref_key_mms_priority"

    const/16 v6, 0x82

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    :cond_5
    const-wide/32 v6, 0x93a80

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public queueMessageForPending(J)Z
    .locals 1
    .param p1    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(J)Z
    .locals 12
    .param p1    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v11, 0x1

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v7

    const/16 v8, 0x80

    if-eq v7, v8, :cond_0

    new-instance v7, Lcom/google/android/mms/MmsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v6, v5

    check-cast v6, Lcom/google/android/mms/pdu/SendReq;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-eqz v7, :cond_1

    const-string v7, "Mms:transaction"

    const-string v8, "sendMessage() - sendReq.getTo() is null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v7, v0

    if-lez v7, :cond_5

    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_1
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    const-string v7, "personal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    iget-wide v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    iget v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    invoke-virtual {v4, v7, v6, v8}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;I)V

    :goto_1
    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v8, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    if-ne v7, v11, :cond_7

    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "sim-slot"

    iget v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v11

    :cond_4
    const-string v7, "Mms:transaction"

    const-string v8, "sendMessage() - encodedNumbers is null "

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v7, "Mms:transaction"

    const-string v8, "sendMessage() - address is null "

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v7, v6}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_1

    :cond_7
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2
.end method

.method public sendSpamRec(JLandroid/net/Uri;)Z
    .locals 10
    .param p1    # J
    .param p3    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v6

    const/16 v7, 0x80

    if-eq v6, v7, :cond_0

    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid message for Spam Report: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/google/android/mms/pdu/SendReq;

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "Mms:transaction"

    const-string v6, "[SpamReport] - sendReq.getTo() is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    const-string v6, "personal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    iget-wide v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageSize:J

    invoke-virtual {v3, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setMessageSize(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SpamReport], mMessageUri 3 !: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SpamReport], mMessageUri 4 !:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SPAMALARM"

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v4, v6, v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "MsgId"

    iget-object v7, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "SpamId"

    if-nez p3, :cond_2

    :goto_1
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public setPriorityLevel(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mPriorityLevel:I

    return-void
.end method

.method public setSimSlot(I)V
    .locals 8
    .param p1    # I

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSlot() setSimSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/mms/transaction/MmsMessageSender;->mInsertedSimNum:I

    if-gt v2, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    if-ne p1, v7, :cond_3

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->getPriorSimSlotToUse(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUseDataSwitchDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v1

    if-le v1, v5, :cond_2

    const-string v2, "persist.sys.dataprefer.simid"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    if-eq v2, v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    iput-boolean v5, v2, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setSimSlot sendMmsMessage mDataSwitchDialog to true : simSlot= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iput p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    goto :goto_0

    :cond_4
    iput v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mSimSlot:I

    goto :goto_0
.end method
