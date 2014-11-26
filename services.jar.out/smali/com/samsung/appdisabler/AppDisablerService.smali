.class public Lcom/samsung/appdisabler/AppDisablerService;
.super Lcom/samsung/appdisabler/IAppDisablerService$Stub;
.source "AppDisablerService.java"

# interfaces
.implements Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;


# instance fields
.field private final mContex:Landroid/content/Context;

.field mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/appdisabler/IAppDisablerService$Stub;-><init>()V

    const-string v1, "AppDisablerService start"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/appdisabler/AppDisablerService;->mContex:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/appdisabler/AppDisablerService;->checkPackages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "onReceive"

    invoke-static {v1, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static configurationFileExists()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/csc/appDisablerList.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public checkPackages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "checkPackages"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/appdisabler/ImsiItemChecker;

    iget-object v1, p0, Lcom/samsung/appdisabler/AppDisablerService;->mContex:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/appdisabler/ImsiItemChecker;-><init>(Landroid/content/Context;Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;)V

    iput-object v0, p0, Lcom/samsung/appdisabler/AppDisablerService;->mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;

    iget-object v0, p0, Lcom/samsung/appdisabler/AppDisablerService;->mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItemChecker;->isApkVersionInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Apk version installed exit"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/appdisabler/AppDisablerService;->mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public checkingEnded()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/appdisabler/AppDisablerService;->clearInfo()V

    return-void
.end method

.method protected clearInfo()V
    .locals 1

    const-string v0, "clearInfo"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/appdisabler/AppDisablerService;->mCurrentImsiThread:Lcom/samsung/appdisabler/ImsiItemChecker;

    return-void
.end method
