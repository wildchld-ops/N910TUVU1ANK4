.class public Lcom/android/mms/ui/StickerDownloadManager;
.super Ljava/lang/Object;
.source "StickerDownloadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/mms/ui/StickerDownloadManager;


# instance fields
.field private incomingHandler:Landroid/os/Handler;

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field private mPendingMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/mms/ui/StickerDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/StickerDownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/ui/StickerDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/StickerDownloadManager$1;-><init>(Lcom/android/mms/ui/StickerDownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/mms/ui/StickerDownloadManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/StickerDownloadManager$2;-><init>(Lcom/android/mms/ui/StickerDownloadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->incomingHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/StickerDownloadManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mPendingMessageList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mReplyHandlerMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/mms/ui/StickerDownloadManager;->incomingHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/StickerDownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/StickerDownloadManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/StickerDownloadManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/mms/ui/StickerDownloadManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/StickerDownloadManager;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/StickerDownloadManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mPendingMessageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/StickerDownloadManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/StickerDownloadManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/StickerDownloadManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mReplyHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method private bindService()V
    .locals 4

    sget-object v1, Lcom/android/mms/ui/StickerDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "bindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.orca.shopagent.DOWNLOAD_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.orca.shopagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/StickerDownloadManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/StickerDownloadManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/ui/StickerDownloadManager;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/StickerDownloadManager;->mInstance:Lcom/android/mms/ui/StickerDownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/StickerDownloadManager;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/StickerDownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/ui/StickerDownloadManager;->mInstance:Lcom/android/mms/ui/StickerDownloadManager;

    :cond_0
    sget-object v0, Lcom/android/mms/ui/StickerDownloadManager;->mInstance:Lcom/android/mms/ui/StickerDownloadManager;

    return-object v0
.end method

.method private makeMessage(Ljava/lang/String;Landroid/os/Handler;I)Landroid/os/Message;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/StickerDownloadManager;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_item_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/mms/ui/StickerDownloadManager;->mReplyHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/mms/ui/StickerDownloadManager;->mBound:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/StickerDownloadManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/mms/ui/StickerDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/StickerDownloadManager;->mPendingMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/mms/ui/StickerDownloadManager;->bindService()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDownloadStickerPackage(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/mms/ui/StickerDownloadManager;->makeMessage(Ljava/lang/String;Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/StickerDownloadManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public downloadStickerPackage(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/mms/ui/StickerDownloadManager;->makeMessage(Ljava/lang/String;Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/StickerDownloadManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public unbindService()V
    .locals 2

    sget-object v0, Lcom/android/mms/ui/StickerDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "unbindService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/StickerDownloadManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/StickerDownloadManager;->mBound:Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/StickerDownloadManager;->mInstance:Lcom/android/mms/ui/StickerDownloadManager;

    return-void
.end method
