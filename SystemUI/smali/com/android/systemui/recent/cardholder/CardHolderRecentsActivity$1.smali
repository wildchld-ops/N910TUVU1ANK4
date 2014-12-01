.class Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CardHolderRecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mOnActivityCreated:Z
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$100(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mShowing:Z
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$200(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mForeground:Z
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$300(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    const v2, 0x7f050017

    const v3, 0x7f050018

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # setter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mForeground:Z
    invoke-static {v1, v4}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$302(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->show(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v1, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onWindowAnimationStart()V

    goto :goto_0

    :cond_6
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismiss()V

    goto :goto_0

    :cond_7
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->dismissAndGoHome()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;->this$0:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;

    # getter for: Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismiss()V

    goto/16 :goto_0
.end method
