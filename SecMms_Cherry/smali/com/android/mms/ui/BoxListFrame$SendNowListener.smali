.class Lcom/android/mms/ui/BoxListFrame$SendNowListener;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendNowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SendNowListener"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "sms"

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNow(),msgItem.mType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v1}, Lcom/android/mms/ui/BoxListFrame;->access$7302(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)Landroid/net/Uri;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNow(),sendnowUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/BoxListFrame;->access$7300(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/BoxListFrame;->access$7402(Lcom/android/mms/ui/BoxListFrame;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/BoxListFrame;->access$7502(Lcom/android/mms/ui/BoxListFrame;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v1, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$7602(Lcom/android/mms/ui/BoxListFrame;J)J

    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/BoxListFrame;->access$7702(Lcom/android/mms/ui/BoxListFrame;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v1, v1

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowSize:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$7802(Lcom/android/mms/ui/BoxListFrame;J)J

    iget-boolean v1, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowLocked:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/BoxListFrame;->access$7902(Lcom/android/mms/ui/BoxListFrame;Z)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendSimSlot:I
    invoke-static {p1, v1}, Lcom/android/mms/ui/BoxListFrame;->access$8002(Lcom/android/mms/ui/BoxListFrame;I)I

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_1
    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowDeliveryReport:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/BoxListFrame;->access$8102(Lcom/android/mms/ui/BoxListFrame;Z)Z

    iget-boolean v1, p2, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowReadReport:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/BoxListFrame;->access$8202(Lcom/android/mms/ui/BoxListFrame;Z)Z

    :cond_2
    return-void

    :cond_3
    const-string v1, "mms"

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v1, "sms"

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$7400(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LGU+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KOR_OPEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8300(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$7500(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$7700(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7600(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8000(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$7900(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),szDests = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7500(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgItem.mBody = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowBody:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7700(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7600(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowDeliveryReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8100(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v7, v7, 0x1

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowReadReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8200(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v7, v7, 0x2

    :cond_5
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    invoke-virtual {v1, v7, v8}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$7600(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$7300(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$8600(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7600(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->finishMultiSelectMode()V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7600(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    const-string v1, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$7400(Lcom/android/mms/ui/BoxListFrame;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LGU+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KOR_OPEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8700(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/mms/util/TelephonyUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_a
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8800(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$7300(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7800(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8000(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_b
    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),sendnowUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7300(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSendNowSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7800(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$7600(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$8900(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$7300(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_c
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$9000(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7600(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v6

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7300(Lcom/android/mms/ui/BoxListFrame;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListFrame$SendNowListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$7600(Lcom/android/mms/ui/BoxListFrame;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
