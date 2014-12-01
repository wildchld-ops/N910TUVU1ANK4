.class public Lcom/visionobjects/resourcemanager/VOLanguagePack;
.super Ljava/lang/Object;
.source "VOLanguagePack.java"

# interfaces
.implements Lcom/visionobjects/resourcemanager/VOLanguage;


# static fields
.field private static languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# instance fields
.field private listener:Lcom/touchtype_fluency/util/ProgressListener;

.field private mLanguage:Ljava/lang/String;

.field private mPrevState:I

.field private mProgress:I

.field private mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method public static setLanguagePacksManager(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V
    .locals 0

    sput-object p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    invoke-virtual {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getPrevState()I

    move-result v0

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v0, v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/RMLauncher;->launchCancelByIntent(Ljava/lang/String;)V

    return-void
.end method

.method public deleteLanguage()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v0, v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/RMLauncher;->launchDeleteByIntent(Ljava/lang/String;)V

    return-void
.end method

.method public doFailDownload()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getPrevState()I

    move-result v0

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1, v1, v1}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    :cond_0
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v0, v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/RMLauncher;->launchCancelByIntent(Ljava/lang/String;)V

    return-void
.end method

.method public downloadLanguage(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 2

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    invoke-virtual {p0, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setPrevState(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v0, v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/RMLauncher;->launchUpdateByIntent(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-virtual {p1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMax()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mProgress:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevState()I
    .locals 1

    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mPrevState:I

    return v0
.end method

.method public getResources(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDownloadInProgress()Z
    .locals 2

    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 1

    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstallable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdateAvailable()Z
    .locals 2

    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFailed()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1, v1, v1}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    :cond_0
    return-void
.end method

.method public notifySuccess()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    :cond_0
    return-void
.end method

.method public resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    return-void
.end method

.method public setPrevState(I)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mPrevState:I

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    iput p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mProgress:I

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1

    iput p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mProgress:I

    return-void
.end method
