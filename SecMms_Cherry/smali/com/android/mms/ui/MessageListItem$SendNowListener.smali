.class Lcom/android/mms/ui/MessageListItem$SendNowListener;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendNowListener"
.end annotation


# instance fields
.field public mItem:Lcom/android/mms/ui/MessageItem;

.field msgId:J

.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .param p2    # Lcom/android/mms/ui/MessageItem;

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "Mms/MessageListItem"

    const-string v5, "SendNowListener"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x0

    const-string v4, "sms"

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    const-string v4, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNow(),msgItem.mType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iput-wide v4, p0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->msgId:J

    iget-wide v4, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageListItem;->access$3802(Lcom/android/mms/ui/MessageListItem;Landroid/net/Uri;)Landroid/net/Uri;

    const-string v4, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNow(),sendnowUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageListItem;->access$3902(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageListItem;->access$4002(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v4, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/ui/MessageListItem;->access$4102(Lcom/android/mms/ui/MessageListItem;J)J

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageListItem;->access$4202(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    iget v4, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v4, v4

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/ui/MessageListItem;->access$4302(Lcom/android/mms/ui/MessageListItem;J)J

    iget-boolean v4, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z
    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageListItem;->access$4402(Lcom/android/mms/ui/MessageListItem;Z)Z

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v4, v5, v6, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageListItem;->access$4502(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I
    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageListItem;->access$4602(Lcom/android/mms/ui/MessageListItem;I)I

    :cond_1
    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mFreeMsgSessionId:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/MessageListItem;->sessionID:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/MessageListItem;->access$4702(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v5, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v4, v5, :cond_6

    :goto_1
    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageListItem;->access$4802(Lcom/android/mms/ui/MessageListItem;Z)Z

    iget-boolean v3, p2, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageListItem;->access$4902(Lcom/android/mms/ui/MessageListItem;Z)Z

    :cond_2
    return-void

    :cond_3
    const-string v4, "mms"

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 24
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "reserved"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    :cond_0
    const/4 v11, 0x1

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v11, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0c02ea

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSentTimeStamp:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/ui/MessageListItem;->access$4500(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v3, "sms"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SKT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v5, "KT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LGU+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v5, "KOR_OPEN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4000(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$4200(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4600(Lcom/android/mms/ui/MessageListItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_7
    move-object v3, v2

    check-cast v3, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowLocked:Z
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$4400(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    const-string v3, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNow(),szDests = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4000(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msgItem.mBody = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4200(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mThreadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowDeliveryReport:Z
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4800(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v3

    if-eqz v3, :cond_8

    or-int/lit8 v22, v22, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowReadReport:Z
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4900(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v3

    if-eqz v3, :cond_9

    or-int/lit8 v22, v22, 0x2

    :cond_9
    move-object v3, v2

    check-cast v3, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0, v5}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    :catch_0
    move-exception v14

    const-string v3, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_c
    const-string v3, "mms"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SKT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v5, "KT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LGU+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v5, "KOR_OPEN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/mms/util/TelephonyUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_e
    new-instance v2, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4300(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4600(Lcom/android/mms/ui/MessageListItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_f
    const-string v3, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNow(),sendnowUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mSendNowSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowSize:J
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4300(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendSimSlot:I
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4600(Lcom/android/mms/ui/MessageListItem;)I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v14

    const-string v3, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mThreadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "im"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4000(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->sessionID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$4700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsBySessionId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v12

    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_12

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_12
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_SEND"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "extra_phone_number"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_receivers_list"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "extra_chat_msg"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$4200(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_session_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->sessionID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$4700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_msg_id"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "extra_client_callback"

    sget-object v5, Lcom/android/mms/ui/ComposeMessageFragment;->mClientMessenger:Landroid/os/Messenger;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "extra_thread_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowThreadId:J
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)J

    move-result-wide v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v3

    const/16 v5, 0x69

    if-lt v3, v5, :cond_15

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$4200(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "extra_msg_type"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_media_type"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v21, :cond_13

    const-string v3, "extra_shop_content_id_list"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_13
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_16

    const-string v3, "extra_chat_type"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mReserved:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    sget-object v5, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageListItem;->access$3802(Lcom/android/mms/ui/MessageListItem;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v15

    const-string v3, "Mms/MessageListItem"

    const-string v5, "The exception is occurred in sendMessage()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_15
    :try_start_3
    const-string v3, "extra_msg_type"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :cond_16
    const-string v3, "extra_chat_type"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "im"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowType:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3900(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getRcsChatId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/android/mms/rcs/RcsChatManager;->startChatSendService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v15

    const-string v3, "Mms/MessageListItem"

    const-string v5, "The exception is occurred in sendRcsMessage()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_18
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$5500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mRcsChatId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$SendNowListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const-string v7, "display_delivery"

    invoke-static {v5, v6, v7}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5
.end method
