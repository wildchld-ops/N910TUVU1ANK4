.class Lcom/android/server/pm/PackageManagerService$InstallArgs$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$InstallArgs;->preCollectCert()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$InstallArgs;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "PackageManager"

    const-string v1, "dexopt start"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mPkg:Landroid/content/pm/PackageParser$Package;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;ZZZ)I
    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;ZZZ)I

    const-string v0, "PackageManager"

    const-string v1, "dexopt end"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
