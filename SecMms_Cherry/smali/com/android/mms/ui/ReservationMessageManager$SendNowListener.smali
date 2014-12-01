.class Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendNowListener"
.end annotation


# instance fields
.field public mItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "SendNowListener"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    const-string v1, "sms"

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    const-string v1, "Mms/ReservationMessageManager"

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

    if-eqz v0, :cond_1

    iget-wide v1, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2302(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_1
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNow(),sendnowUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2402(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2502(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v1, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$2602(Lcom/android/mms/ui/ReservationMessageManager;J)J

    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2702(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v1, v1

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$2802(Lcom/android/mms/ui/ReservationMessageManager;J)J

    iget-boolean v1, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2902(Lcom/android/mms/ui/ReservationMessageManager;Z)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendSimSlot:I
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3002(Lcom/android/mms/ui/ReservationMessageManager;I)I

    :cond_2
    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mFreeMsgSessionId:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->sessionID:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3102(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    :goto_1
    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3202(Lcom/android/mms/ui/ReservationMessageManager;Z)Z

    iget-boolean v1, p2, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z
    invoke-static {p1, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3302(Lcom/android/mms/ui/ReservationMessageManager;Z)Z

    :cond_3
    return-void

    :cond_4
    const-string v1, "mms"

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_5
    const-string v1, "im"

    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15

    const-string v1, "sms"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2400(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2500(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2700(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3000(Lcom/android/mms/ui/ReservationMessageManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),szDests = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2500(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgItem.mBody = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2700(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v14, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowDeliveryReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3200(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v14, v14, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowReadReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3300(Lcom/android/mms/ui/ReservationMessageManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v14, v14, 0x2

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1400(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_5
    return-void

    :catch_0
    move-exception v7

    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    const-string v1, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2400(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2800(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$3000(Lcom/android/mms/ui/ReservationMessageManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_7
    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),sendnowUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSendNowSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2800(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string v1, "Mms/ReservationMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "im"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2400(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v12, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$2500(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->sessionID:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3100(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsBySessionId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x1

    invoke-static {v12, v1}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v6

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ge v9, v1, :cond_a

    invoke-virtual {v6, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_a
    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_SEND"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_phone_number"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_receivers_list"

    invoke-virtual {v10, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "extra_chat_msg"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2700(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_session_id"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->sessionID:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$3100(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_msg_id"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v10, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "extra_msg_type"

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_client_callback"

    sget-object v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_thread_id"

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2600(Lcom/android/mms/ui/ReservationMessageManager;)J

    move-result-wide v3

    invoke-virtual {v10, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_c

    const-string v1, "extra_chat_type"

    const/4 v3, 0x1

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mReserved:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v1, v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2302(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$1800(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$2300(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    const-string v1, "Mms/ReservationMessageManager"

    const-string v3, "The exception is occurred in sendMessage()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_c
    :try_start_3
    const-string v1, "extra_chat_type"

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2
.end method
