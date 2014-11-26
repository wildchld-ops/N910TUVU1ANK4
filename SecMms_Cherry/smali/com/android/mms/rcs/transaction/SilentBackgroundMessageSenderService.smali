.class public Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;
.super Landroid/app/Service;
.source "SilentBackgroundMessageSenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;,
        Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;,
        Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$LocalBinder;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static mHandler:Landroid/os/Handler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

.field private mServiceHandler:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "MMS/SilentBackgroundMessageSenderService"

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$LocalBinder;-><init>(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;
    .locals 1
    .param p0    # Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;)Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;
    .locals 0
    .param p0    # Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;
    .param p1    # Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    return-object p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;-><init>(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mServiceHandler:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;

    const-string v2, "inside onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;

    const-string v1, "inside ondESTROY()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->TAG:Ljava/lang/String;

    const-string v2, "inside onStartCOMMD()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mServiceHandler:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mServiceHandler:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public sendFallbackMessage(Landroid/content/Intent;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
    .param p2    # Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;-><init>(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;->mMsgSender:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;

    # invokes: Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->sendBGMessage()V
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;->access$000(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$MsgBGSender;)V

    :cond_0
    return-void
.end method
