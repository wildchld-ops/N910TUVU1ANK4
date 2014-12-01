.class Lcom/android/server/cocktailbar/CocktailBarManagerService$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;->init(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x5

    const-string v0, "CocktailBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUser user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->iskioskContainerExists()Z
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$000(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v1

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v1

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetMode(I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setMode(I)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$300(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILandroid/os/IRemoteCallback;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # setter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$102(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)I

    return-void

    :cond_1
    if-lt p1, v4, :cond_3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v0

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v1

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    :goto_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setMode(I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v1

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetMode(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v0

    if-lt v0, v4, :cond_0

    if-ge p1, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)I

    move-result v1

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->resetMode(I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    goto :goto_0
.end method
