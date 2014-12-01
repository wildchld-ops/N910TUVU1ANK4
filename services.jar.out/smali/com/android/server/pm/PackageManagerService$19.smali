.class Lcom/android/server/pm/PackageManagerService$19;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageManager"

    const-string v2, "PrivateMode - ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/pm/PackageManagerService;->mIsSecretMode:Z
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$5902(Lcom/android/server/pm/PackageManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->processEnabledSettingOfSecretPackageList(I)V
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEV:Z

    if-eqz v1, :cond_3

    const-string v1, "PackageManager"

    const-string v2, "PrivateMode - OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mIsSecretMode:Z
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$5902(Lcom/android/server/pm/PackageManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->processEnabledSettingOfSecretPackageList(I)V
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;I)V

    goto :goto_0
.end method
