.class abstract Lcom/android/server/pm/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InstallArgs"
.end annotation


# instance fields
.field final flags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field mPkg:Landroid/content/pm/PackageParser$Package;

.field mPp:Landroid/content/pm/PackageParser;

.field mRetCollect:Z

.field mRetCopyApk:I

.field mTmpDexPath:Ljava/lang/String;

.field final manifestDigest:Landroid/content/pm/ManifestDigest;

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final packageURI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mRetCollect:Z

    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mRetCopyApk:I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPp:Landroid/content/pm/PackageParser;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPkg:Landroid/content/pm/PackageParser$Package;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerSourcePackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->manifestDigest:Landroid/content/pm/ManifestDigest;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mRetCollect:Z

    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mRetCopyApk:I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPp:Landroid/content/pm/PackageParser;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPkg:Landroid/content/pm/PackageParser$Package;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerSourcePackageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->manifestDigest:Landroid/content/pm/ManifestDigest;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method abstract checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract createCopyFile()V
.end method

.method deleteTmpDex()V
    .locals 4

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mTmpDexPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mTmpDexPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mTmpDexPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method doPostCopy(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getDexPath()Ljava/lang/String;
.end method

.method abstract getNativeLibraryPath()Ljava/lang/String;
.end method

.method getNewDexPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getDexPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isFwdLocked()Z
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized preCollectCert()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mRetCollect:Z

    if-eqz v6, :cond_1

    const-string v5, "PackageManager"

    const-string/jumbo v6, "skipping preCollectCert"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mRetCollect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    :cond_1
    :try_start_1
    new-instance v6, Landroid/content/pm/PackageParser;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPp:Landroid/content/pm/PackageParser;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPp:Landroid/content/pm/PackageParser;

    if-eqz v6, :cond_3

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPp:Landroid/content/pm/PackageParser;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    move v0, v1

    :goto_1
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_5

    :goto_2
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int/lit8 v7, v6, 0x2

    if-eqz v0, :cond_6

    const/16 v6, 0x10

    :goto_3
    or-int/2addr v6, v7

    if-eqz v1, :cond_2

    const/16 v5, 0x20

    :cond_2
    or-int v2, v6, v5

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPp:Landroid/content/pm/PackageParser;

    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$InstallArgs$1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPp:Landroid/content/pm/PackageParser;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mRetCollect:Z

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time to collect certificates: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->timeToSomeThing(J)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mRetCollect:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    move v1, v5

    goto :goto_2

    :cond_6
    move v6, v5

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
