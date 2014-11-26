.class Lcom/android/launcher2/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->dynamicCscToggleEasyMode(ZZILandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$basicEasymode:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dynamicModeSwitch:Z

.field final synthetic val$fromSettings:Z

.field final synthetic val$theme_install_status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;IZZLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iput p2, p0, Lcom/android/launcher2/LauncherModel$10;->val$basicEasymode:I

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$10;->val$fromSettings:Z

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$10;->val$dynamicModeSwitch:Z

    iput-object p5, p0, Lcom/android/launcher2/LauncherModel$10;->val$theme_install_status:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/launcher2/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$basicEasymode:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherProvider;->switchToDynamicMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    # setter for: Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z
    invoke-static {v2, v4}, Lcom/android/launcher2/LauncherModel;->access$402(Lcom/android/launcher2/LauncherModel;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$fromSettings:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v2, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "Launcher.Model"

    const-string v3, "dynamicCscToggleEasyMode: Line 1863"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$10$1;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher2/LauncherModel$10$1;-><init>(Lcom/android/launcher2/LauncherModel$10;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.DYNAMIC_CSC_CHANGES_APPLIED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "UpdateNotification"

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$dynamicModeSwitch:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Theme_Installed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$10;->val$theme_install_status:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
