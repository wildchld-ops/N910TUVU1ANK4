.class public Lcom/android/phone/PhotoRingMgr;
.super Ljava/lang/Object;
.source "PhotoRingMgr.java"


# static fields
.field private static final DBG:Z

.field private static sMe:Lcom/android/phone/PhotoRingMgr;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field public mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhotoRingMgr;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhotoRingMgr;->sMe:Lcom/android/phone/PhotoRingMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/phone/CallMessageNetwork;->init(Landroid/content/Context;Lcom/android/phone/PhotoRingMgr;)Lcom/android/phone/CallMessageNetwork;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    sget-boolean v0, Lcom/android/phone/PhotoRingMgr;->DBG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/PhotoRingMgr;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/phone/PhotoRingMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/PhotoRingMgr;->sMe:Lcom/android/phone/PhotoRingMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhotoRingMgr;->init()Lcom/android/phone/PhotoRingMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/PhotoRingMgr;->sMe:Lcom/android/phone/PhotoRingMgr;

    goto :goto_0
.end method

.method static init()Lcom/android/phone/PhotoRingMgr;
    .locals 4

    const-class v1, Lcom/android/phone/PhotoRingMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/PhotoRingMgr;->sMe:Lcom/android/phone/PhotoRingMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhotoRingMgr;

    invoke-direct {v0}, Lcom/android/phone/PhotoRingMgr;-><init>()V

    sput-object v0, Lcom/android/phone/PhotoRingMgr;->sMe:Lcom/android/phone/PhotoRingMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/PhotoRingMgr;->sMe:Lcom/android/phone/PhotoRingMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "PhotoRingMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhotoRingMgr;->sMe:Lcom/android/phone/PhotoRingMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "PhotoRingMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public deleteContentFile(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deregisterCallMessageNetworkListener(Lcom/android/phone/ICallMessageNetworkListener;)V
    .locals 1
    .param p1    # Lcom/android/phone/ICallMessageNetworkListener;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallMessageNetwork;->deregisterCallMessageNetworkListener(Lcom/android/phone/ICallMessageNetworkListener;)V

    :cond_0
    return-void
.end method

.method public downloadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/CallMessageNetwork;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCallMessageCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallMessageNetwork;->getCallMessageCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCallMessageChgCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/CallMessageNetwork;->getCallMessageChgCall()V

    :cond_0
    return-void
.end method

.method public getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/CallMessageNetwork;->getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getContentSpecCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/CallMessageNetwork;->getContentSpecCall()V

    :cond_0
    return-void
.end method

.method public getNumberFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Intent;

    const-string v1, "getInitialListFromIntent - enter"

    invoke-direct {p0, v1}, Lcom/android/phone/PhotoRingMgr;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "dest_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "dest_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialListFromIntent savedNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhotoRingMgr;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public interruptDownload()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0}, Lcom/android/phone/CallMessageNetwork;->interruptDownload()V

    :cond_0
    return-void
.end method

.method public registerCallMessageNetworkListener(Lcom/android/phone/ICallMessageNetworkListener;)V
    .locals 1
    .param p1    # Lcom/android/phone/ICallMessageNetworkListener;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallMessageNetwork;->registerCallMessageNetworkListener(Lcom/android/phone/ICallMessageNetworkListener;)V

    :cond_0
    return-void
.end method

.method public setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/CallMessageNetwork;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public uploadContentCall(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingMgr;->mCallmessageNetwork:Lcom/android/phone/CallMessageNetwork;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallMessageNetwork;->uploadContentCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
