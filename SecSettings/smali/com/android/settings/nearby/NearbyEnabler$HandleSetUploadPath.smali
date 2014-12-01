.class Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleSetUploadPath"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v4}, Lcom/android/settings/nearby/NearbyEnabler;->access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    instance-of v4, p2, Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/nearby/NearbyEnabler;->access$1400(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "NearbyDownloadTo"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v4}, Lcom/android/settings/nearby/NearbyEnabler;->access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/settings/nearby/IMediaServer;->setUploadPath(Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/nearby/NearbyEnabler;->access$1400(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v4}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mounted"

    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v5}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v5}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/nearby/NearbyEnabler;->access$1400(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "NearbyDownloadTo"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "NearbyEnabler"

    const-string v5, "HandleSetUploadPath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v4, "NearbyEnabler"

    const-string v5, "HandleSetUploadPath"

    const-string v6, "incorrect value"

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
