.class Lcom/android/incallui/AccessoryEventHandler$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.samsung.cover.OPEN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v6, v6, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v6, v6, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v6, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "coverOpen"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    :goto_1
    const-string v6, "coverType"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccessoryEventHandler. cover closed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cover type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->hasLiveCallExceptDisconnecting()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v2, :cond_3

    const-string v5, "notifyListenersOfChange: has not live call"

    invoke-static {p0, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v4, v4, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v4, v4, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v4, v4, Lcom/android/incallui/AccessoryEventHandler;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v4, v4, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    :cond_4
    const-string v4, "no action - COVER_TYPE_FLIP_WALLET"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    # invokes: Lcom/android/incallui/AccessoryEventHandler;->notifyListenersOfChange(Z)V
    invoke-static {v4, v2}, Lcom/android/incallui/AccessoryEventHandler;->access$000(Lcom/android/incallui/AccessoryEventHandler;Z)V

    goto :goto_0
.end method
