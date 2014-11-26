.class Lcom/android/server/cocktailbar/CocktailBarManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.intent.extra.user_handle"

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v5, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "CocktailBarManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect user handle supplied in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onConfigurationChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-object v6, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v6

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetMode(I)V

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    goto :goto_0

    :cond_4
    const-string v5, "CocktailBarManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-virtual {v3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
