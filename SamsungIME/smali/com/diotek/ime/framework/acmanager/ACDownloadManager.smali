.class public Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;,
        Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;,
        Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;
    }
.end annotation


# static fields
.field public static final CHINESE_HONGKONG:I = 0xe2

.field public static final CHINESE_SIMPLIFIED:I = 0xe1

.field public static final CHINESE_TRADITIONAL:I = 0xe0

.field public static final MSG_UPDATE_PROGRESSBAR:I = 0x0

.field public static final REFRESH_INTERVAL_TIME:I = 0x15180

.field public static final TAG:Ljava/lang/String; = "ACDownloadManager"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# instance fields
.field private legalText:Ljava/lang/String;

.field private mAppointedDownloadLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadingLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mSupportedLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateableLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static newInstance()Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    if-nez v0, :cond_0

    sput-object p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->sInstance:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    return-object v0
.end method


# virtual methods
.method public cancelDownload(I)V
    .locals 0

    return-void
.end method

.method protected deleteCacheTempFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public deleteLanguage(I)V
    .locals 0

    return-void
.end method

.method public download(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dummyDownload(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected extractFiles(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getACManager()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppointedDownloadLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadableLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadedLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mSupportedLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getTOSText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->legalText:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateableLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public register(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected runCases()V
    .locals 0

    return-void
.end method

.method protected runDeviceSetup()V
    .locals 0

    return-void
.end method

.method protected runLanguageDLCases()V
    .locals 0

    return-void
.end method

.method public runLivingAlphaLanguage()V
    .locals 0

    return-void
.end method

.method public runLivingKoreanLanguage()V
    .locals 0

    return-void
.end method

.method public setLivingLanguage(I)V
    .locals 0

    return-void
.end method

.method public setUpdateState(IZ)V
    .locals 0

    return-void
.end method

.method public setUseLivingLanguageFromSetting(Z)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public declared-synchronized startProgressBarThread(Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public declared-synchronized stopProgressBarThread()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public unregister(I)V
    .locals 0

    return-void
.end method
