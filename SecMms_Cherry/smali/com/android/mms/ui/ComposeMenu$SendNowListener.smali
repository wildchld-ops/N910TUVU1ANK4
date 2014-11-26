.class Lcom/android/mms/ui/ComposeMenu$SendNowListener;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendNowListener"
.end annotation


# instance fields
.field public mItem:Lcom/android/mms/ui/MessageItem;

.field msgId:J

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .param p2    # Lcom/android/mms/ui/MessageItem;

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "Mms/ComposerMenu"

    const-string v5, "SendNowListener"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x0

    const-string v4, "sms"

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    const-string v4, "Mms/ComposerMenu"

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

    iput-wide v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->msgId:J

    iget-wide v4, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1, v4}, Lcom/android/mms/ui/ComposeMenu;->access$602(Lcom/android/mms/ui/ComposeMenu;Landroid/net/Uri;)Landroid/net/Uri;

    const-string v4, "Mms/ComposerMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendNow(),sendnowUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/ComposeMenu;->access$702(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/ComposeMenu;->access$802(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v4, p2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/ui/ComposeMenu;->access$902(Lcom/android/mms/ui/ComposeMenu;J)J

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/ComposeMenu;->access$1002(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;

    iget v4, p2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v4, v4

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/ui/ComposeMenu;->access$1102(Lcom/android/mms/ui/ComposeMenu;J)J

    iget-boolean v4, p2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z
    invoke-static {p1, v4}, Lcom/android/mms/ui/ComposeMenu;->access$1202(Lcom/android/mms/ui/ComposeMenu;Z)Z

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v4, v5, v6, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSentTimeStamp:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/ui/ComposeMenu;->access$1302(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v5, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v4, v5, :cond_6

    :goto_1
    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/ComposeMenu;->access$1402(Lcom/android/mms/ui/ComposeMenu;Z)Z

    iget-boolean v3, p2, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z
    invoke-static {p1, v3}, Lcom/android/mms/ui/ComposeMenu;->access$1502(Lcom/android/mms/ui/ComposeMenu;Z)Z

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I
    invoke-static {p1, v3}, Lcom/android/mms/ui/ComposeMenu;->access$1602(Lcom/android/mms/ui/ComposeMenu;I)I

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
    const-string v4, "im"

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_5
    const-string v4, "im"

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "reserved"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    :cond_0
    const/4 v9, 0x1

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v9, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0c02ea

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSentTimeStamp:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMenu;->access$1300(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v14, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_3
    const-string v1, "sms"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$700(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$800(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$1000(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$1600(Lcom/android/mms/ui/ComposeMenu;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$1200(Lcom/android/mms/ui/ComposeMenu;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    const-string v1, "Mms/ComposerMenu"

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

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$1000(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v13, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$1400(Lcom/android/mms/ui/ComposeMenu;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v13, v13, 0x1

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$1500(Lcom/android/mms/ui/ComposeMenu;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v13, v13, 0x2

    :cond_6
    move-object v1, v0

    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    const-string v1, "Mms/ComposerMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, mSendNowThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_9
    const-string v1, "mms"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$700(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$1100(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$1600(Lcom/android/mms/ui/ComposeMenu;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_a
    const-string v1, "Mms/ComposerMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNow(),sendnowUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSendNowSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$1100(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_b
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v11

    const-string v1, "Mms/ComposerMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mThreadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "im"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$700(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/mms/data/WorkingMessage;->callasyncSendChat(Lcom/android/mms/data/Conversation;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mReserved:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMenu;->access$602(Lcom/android/mms/ui/ComposeMenu;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_d
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v12

    const-string v1, "Mms/ComposerMenu"

    const-string v3, "The exception is occurred in sendMessage()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_e
    const-string v1, "im"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$700(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$900(Lcom/android/mms/ui/ComposeMenu;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v1, Lcom/android/mms/ui/MessageItem;->mRcsChatId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/mms/rcs/RcsChatManager;->startChatSendService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mReserved:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    sget-object v3, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    # setter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMenu;->access$602(Lcom/android/mms/ui/ComposeMenu;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_f
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v12

    const-string v1, "Mms/ComposerMenu"

    const-string v3, "The exception is occurred in sendRcsMessage()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_10
    :try_start_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mRcsChatId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu$SendNowListener;->mItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const-string v5, "display_delivery"

    invoke-static {v3, v4, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2
.end method
