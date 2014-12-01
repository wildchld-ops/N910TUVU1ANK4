.class public Lcom/android/mms/ui/MessageOptions$SendNowListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendNowListener"
.end annotation


# instance fields
.field public mItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 6

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "Mms/MessageOptions"

    const-string v4, "SendNowListener"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x0

    const-string v3, "sms"

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    const-string v3, "Mms/MessageOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNow(),msgItem.mType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$902(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;)Landroid/net/Uri;

    const-string v3, "Mms/MessageOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNow(),sendnowUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1002(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1102(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/MessageOptions;->access$1202(Lcom/android/mms/ui/MessageOptions;J)J

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1302(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;

    iget v3, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v3, v3

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J
    invoke-static {p1, v3, v4}, Lcom/android/mms/ui/MessageOptions;->access$1402(Lcom/android/mms/ui/MessageOptions;J)J

    iget-boolean v3, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1502(Lcom/android/mms/ui/MessageOptions;Z)Z

    iget v3, p2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1602(Lcom/android/mms/ui/MessageOptions;I)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_1
    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1702(Lcom/android/mms/ui/MessageOptions;Z)Z

    iget-boolean v3, p2, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageOptions;->access$1802(Lcom/android/mms/ui/MessageOptions;Z)Z

    :cond_1
    return-void

    :cond_2
    const-string v3, "mms"

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    const-string v1, "sms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1100(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1300(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1600(Lcom/android/mms/ui/MessageOptions;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1500(Lcom/android/mms/ui/MessageOptions;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),szDests = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgItem.mBody = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1300(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

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

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1700(Lcom/android/mms/ui/MessageOptions;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v11, v11, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1800(Lcom/android/mms/ui/MessageOptions;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v11, v11, 0x2

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    invoke-virtual {v1, v11, v6}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, v3, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v9

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_6
    const-string v1, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1400(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1600(Lcom/android/mms/ui/MessageOptions;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_7
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),sendnowUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSendNowSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1400(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, v3, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    goto/16 :goto_1

    :catch_1
    move-exception v9

    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    if-nez v1, :cond_c

    const-string v1, "im"

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1900(Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1900(Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/mms/data/WorkingMessage;->callasyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mReserved:I

    if-ne v1, v12, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageOptions;->access$902(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v10

    const-string v1, "Mms/MessageOptions"

    const-string v3, "The exception is occurred in sendMessage()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mServiceType:I

    if-ne v1, v12, :cond_4

    const-string v1, "im"

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$1000(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v3, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/MessageOptions;->access$1200(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsChatId()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/mms/rcs/RcsChatManager;->startChatSendService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mReserved:I

    if-ne v1, v12, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageOptions;->access$902(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    # getter for: Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v10

    const-string v1, "Mms/MessageOptions"

    const-string v3, "The exception is occurred in sendRcsMessage()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_e
    :try_start_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mRcsChatId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const-string v5, "display_delivery"

    invoke-static {v3, v4, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3
.end method
