.class public Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecvMmsMessageListener"
.end annotation


# instance fields
.field private mMsgId:J

.field private final mRecvMmsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;J)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->mRecvMmsUri:Landroid/net/Uri;

    iput-wide p2, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->mMsgId:J

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->mRecvMmsUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->mMsgId:J

    const-string v5, "mms"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$1202(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v1

    if-ne v1, v6, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "sim-slot"

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->mRecvMmsUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$RecvMmsMessageListener;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
