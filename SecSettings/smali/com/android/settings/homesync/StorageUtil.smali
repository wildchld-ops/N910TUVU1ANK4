.class Lcom/android/settings/homesync/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doesFileExist(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;)Z
    .locals 4
    .param p0    # Lcom/sec/android/spc/service/ISpcBackupService;
    .param p1    # Ljava/io/File;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/secdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/sec/android/spc/service/ISpcBackupService;->doesFileExist(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;
    .locals 11
    .param p0    # Landroid/content/Context;

    const/4 v1, -0x1

    const-string v5, ""

    const/4 v9, 0x0

    const-string v10, "storage"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    array-length v2, v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v6, v7, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "usb"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "mounted"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v9, :cond_0

    invoke-virtual {v9, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ltz v1, :cond_3

    aget-object v10, v7, v1

    :goto_1
    return-object v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method static isNewerFile(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p0    # Lcom/sec/android/spc/service/ISpcBackupService;
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;

    const/4 v5, 0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/secdata"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lcom/sec/android/spc/service/ISpcBackupService;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/secdata"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lcom/sec/android/spc/service/ISpcBackupService;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v3

    :goto_1
    cmp-long v6, v1, v3

    if-lez v6, :cond_2

    :goto_2
    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static isSameFile(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    .param p0    # Lcom/sec/android/spc/service/ISpcBackupService;
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/secdata"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Lcom/sec/android/spc/service/ISpcBackupService;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Lcom/sec/android/spc/service/ISpcBackupService;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/secdata"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Lcom/sec/android/spc/service/ISpcBackupService;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Lcom/sec/android/spc/service/ISpcBackupService;->getFileSize(Ljava/lang/String;)J

    move-result-wide v3

    :goto_1
    cmp-long v10, v5, v7

    if-nez v10, :cond_0

    cmp-long v10, v1, v3

    if-nez v10, :cond_0

    const/4 v9, 0x1

    :cond_0
    :goto_2
    return v9

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {p2}, Ljava/io/File;->length()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
