.class Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;
.super Ljava/lang/Object;
.source "SettingsBackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiRestoreRunnable"
.end annotation


# instance fields
.field private restoredSupplicantData:[B

.field private restoredWifiConfigFile:[B

.field final synthetic this$0:Lcom/android/providers/settings/SettingsBackupAgent;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsBackupAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method incorporateWifiConfigFile(Landroid/app/backup/BackupDataInput;)V
    .locals 4
    .param p1    # Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    array-length v1, v1

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsBackupAgent"

    const-string v2, "Unable to read config file"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    goto :goto_0
.end method

.method incorporateWifiSupplicant(Landroid/app/backup/BackupDataInput;)V
    .locals 4
    .param p1    # Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    array-length v1, v1

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsBackupAgent"

    const-string v2, "Unable to read supplicant data"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    goto :goto_0
.end method

.method public run()V
    .locals 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    if-eqz v4, :cond_7

    :cond_0
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    # invokes: Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I
    invoke-static {v4, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->access$000(Lcom/android/providers/settings/SettingsBackupAgent;Z)I

    move-result v1

    if-eqz v2, :cond_1

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    const-string v5, "/data/misc/wifi/wpa_supplicant.conf"

    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredSupplicantData:[B

    array-length v7, v7

    # invokes: Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->access$100(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V

    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v5, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3f2

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    # getter for: Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/settings/SettingsBackupAgent;->access$200()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->restoredWifiConfigFile:[B

    array-length v7, v7

    # invokes: Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->access$300(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V

    :cond_3
    if-eqz v2, :cond_4

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    # invokes: Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I
    invoke-static {v4, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->access$000(Lcom/android/providers/settings/SettingsBackupAgent;Z)I

    :cond_7
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method
