.class Lcom/android/settings/homesync/FileOperationPaste$5;
.super Ljava/lang/Object;
.source "FileOperationPaste.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperationPaste;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperationPaste;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationPaste$5;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "HomeSyncFileOperation"

    const-string v1, "onServiceConntected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$5;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-static {p2}, Lcom/sec/android/spc/service/ISpcBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/spc/service/ISpcBackupService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "HomeSyncFileOperation"

    const-string v1, "Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$5;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/homesync/FileOperationPaste;->mISpcBackupService:Lcom/sec/android/spc/service/ISpcBackupService;

    return-void
.end method
