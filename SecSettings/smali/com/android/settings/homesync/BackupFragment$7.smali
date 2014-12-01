.class Lcom/android/settings/homesync/BackupFragment$7;
.super Ljava/lang/Object;
.source "BackupFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/BackupFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/BackupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/BackupFragment$7;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$7;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-static {p2}, Lcom/sec/android/spc/service/ISpcBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/spc/service/ISpcBackupService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/homesync/BackupFragment;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    const-string v0, "/sdcard/HomeSync/"

    new-instance v1, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;

    iget-object v2, p0, Lcom/android/settings/homesync/BackupFragment$7;->this$0:Lcom/android/settings/homesync/BackupFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/homesync/BackupFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings/homesync/BackupFragment;Lcom/android/settings/homesync/BackupFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "BackupFragment"

    const-string v1, "Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/homesync/BackupFragment$7;->this$0:Lcom/android/settings/homesync/BackupFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/homesync/BackupFragment;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    return-void
.end method
