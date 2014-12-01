.class public Lcom/android/settings/cloud/CloudSettings;
.super Ljava/lang/Object;
.source "CloudSettings.java"


# static fields
.field private static mInstance:Lcom/android/settings/cloud/CloudSettings;


# instance fields
.field private accountName:Ljava/lang/String;

.field private documentSync:Z

.field private documentSyncFolderName:Ljava/lang/String;

.field private mIsWifiOnlyDoc:Z

.field private mIsWifiOnlyMusic:Z

.field private mIsWifiOnlyPhoto:Z

.field private mIsWifiOnlyVideo:Z

.field private mSupportDocumentSync:Z

.field private mSupportMusicSync:Z

.field private mSupportPhotoSync:Z

.field private mSupportVideoSync:Z

.field private musicSync:Z

.field private numberOfDisplayingPhotos:I

.field private photoSync:Z

.field private storageUsage:Ljava/lang/String;

.field private venderId:I

.field private videoSync:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/settings/cloud/CloudSettings;->parceCloudSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings/cloud/CloudSettings;
    .locals 3

    const-class v1, Lcom/android/settings/cloud/CloudSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/cloud/CloudSettings;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/cloud/CloudSettings;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/os/Bundle;)Lcom/android/settings/cloud/CloudSettings;
    .locals 2

    const-class v1, Lcom/android/settings/cloud/CloudSettings;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/cloud/CloudSettings;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettings;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;

    :goto_0
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/settings/cloud/CloudSettings;->mInstance:Lcom/android/settings/cloud/CloudSettings;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettings;->parceCloudSettings(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parceCloudSettings(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v1, "storageVender"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/cloud/CloudSettings;->venderId:I

    const-string v1, "accountName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    const-string v1, "documentSyncFolderName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    const-string v1, "numberOfDisplayingPhotos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    const-string v1, "caToSettingsValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportPhotoSync:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportVideoSync:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportMusicSync:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportDocumentSync:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->photoSync:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->videoSync:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_7

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->musicSync:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_8

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->documentSync:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_9

    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_a

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_b

    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_c

    :goto_b
    iput-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v3

    goto :goto_7

    :cond_9
    move v1, v3

    goto :goto_8

    :cond_a
    move v1, v3

    goto :goto_9

    :cond_b
    move v1, v3

    goto :goto_a

    :cond_c
    move v2, v3

    goto :goto_b
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentSyncFolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageUsage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getVenderId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/cloud/CloudSettings;->venderId:I

    return v0
.end method

.method public isAccountSet()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocumentSync()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->documentSync:Z

    return v0
.end method

.method public isMusicSync()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->musicSync:Z

    return v0
.end method

.method public isPhoneModel(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isPhotoSync()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->photoSync:Z

    return v0
.end method

.method public isSupportSync(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportPhotoSync:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportVideoSync:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportMusicSync:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mSupportDocumentSync:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isVideoSync()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->videoSync:Z

    return v0
.end method

.method public isWifiOnly(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDocumentSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettings;->documentSync:Z

    return-void
.end method

.method public setMusicSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettings;->musicSync:Z

    return-void
.end method

.method public setPhotoSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettings;->photoSync:Z

    return-void
.end method

.method public setStorageUsage(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "storageVender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/cloud/CloudSettings;->venderId:I

    const-string v0, "storageUsage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setVideoSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/cloud/CloudSettings;->videoSync:Z

    return-void
.end method

.method public setWifiOnly(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean p2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    goto :goto_0

    :pswitch_3
    iput-boolean p2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageVender--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cloud/CloudSettings;->venderId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettings;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "documentSyncFolderName--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettings;->documentSyncFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photoSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->photoSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->videoSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->musicSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "docSync--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->documentSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfDisplayingPhotos--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/cloud/CloudSettings;->numberOfDisplayingPhotos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageUsage--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettings;->storageUsage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyPhoto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyMusic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doc  --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/cloud/CloudSettings;->mIsWifiOnlyDoc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
