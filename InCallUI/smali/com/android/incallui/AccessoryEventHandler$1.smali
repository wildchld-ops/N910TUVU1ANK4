.class Lcom/android/incallui/AccessoryEventHandler$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "AccessoryEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AccessoryEventHandler;->initializeCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccessoryEventHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccessoryEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 6
    .param p1    # Lcom/samsung/android/sdk/cover/ScoverState;

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v4, v4, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v4, v4, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasLiveCallExceptDisconnecting()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    const-string v3, "notifyListenersOfChange: has not live call"

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v2, v2, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v2, v2, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCoverStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isClosed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v2, v2, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    const/16 v4, 0x64

    if-ne v2, v4, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v2, v2, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    :cond_5
    const-string v2, "no action - TYPE_FLIP_COVER"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$1;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    # invokes: Lcom/android/incallui/AccessoryEventHandler;->notifyListenersOfChange(Z)V
    invoke-static {v2, v1}, Lcom/android/incallui/AccessoryEventHandler;->access$000(Lcom/android/incallui/AccessoryEventHandler;Z)V

    goto :goto_0
.end method
