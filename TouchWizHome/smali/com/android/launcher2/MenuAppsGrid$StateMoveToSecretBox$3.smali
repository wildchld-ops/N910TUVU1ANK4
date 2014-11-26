.class Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->moveToSecretBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

.field final synthetic val$hItemList:Ljava/util/List;

.field final synthetic val$launcher:Lcom/android/launcher2/Launcher;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$mPM:Landroid/content/pm/PackageManager;

.field final synthetic val$spMgr:Lcom/android/launcher2/SecretPageManager;

.field final synthetic val$workspace:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;Ljava/util/List;Landroid/content/pm/PackageManager;Lcom/android/launcher2/SecretPageManager;Ljava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$mPM:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$spMgr:Lcom/android/launcher2/SecretPageManager;

    iput-object p5, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$hItemList:Ljava/util/List;

    iput-object p6, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    iput-object p7, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$workspace:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$mPM:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->addSecretPackage(Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$spMgr:Lcom/android/launcher2/SecretPageManager;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$hItemList:Ljava/util/List;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher2/SecretPageManager;->getHomeViewItemListByPackageName(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.launcher.MOVE_TO_PRIVATE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$workspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$hItemList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherApplication;->setSecretScreenCount(Landroid/content/Context;I)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/LauncherExModel;->updateHomeDataBase(Z)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->bindHomeInsertSecretPage()V

    :cond_2
    return-void
.end method
