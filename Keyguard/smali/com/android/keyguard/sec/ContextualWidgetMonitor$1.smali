.class Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "pkg"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v10, "id"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "Notification"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    if-eqz v5, :cond_0

    iget v10, v5, Landroid/app/Notification;->missedCount:I

    if-lez v10, :cond_0

    const/4 v3, 0x1

    :cond_0
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pkg ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCheckMissedEvent ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    const/4 v10, 0x5

    if-eq v2, v10, :cond_4

    const-string v10, "com.android.phone"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "com.skt.prod.dialer"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    const-string v10, "com.android.mms"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    const-string v10, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v3, :cond_8

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12c0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12c0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12c0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUsePreviousMusicWidget()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12d4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12d4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12d4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_1
    const-string v10, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_c

    :cond_7
    :goto_2
    return-void

    :cond_8
    const-string v10, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12ca

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12ca

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12ca

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_a
    const-string v10, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12de

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_c
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v10, "com.sec.android.app.music"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12de

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    :goto_3
    const-string v10, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12e8

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    :goto_4
    const-string v10, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12fc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12fc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12fc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    :goto_5
    const-string v10, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1310

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1310

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1310

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    :goto_6
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "networkType"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isRoamingFeature()Z
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$100(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isIgnoreNationalRoaming()Z
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$200(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v4, 0x1

    :goto_7
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new_show_missed ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$300(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v10

    if-eq v4, v10, :cond_7

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # setter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z
    invoke-static {v10, v4}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$302(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)Z

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1324

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1324

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_15
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1324

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v10, "ContexualWidgetMonitor"

    const-string v11, "sendMessage (MSG_ROAMING_PLAY_STATE_CHANGED)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_16
    const-string v10, "com.sec.android.app.fm"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_17
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x131a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    :cond_18
    const-string v10, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12f2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12f2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_19
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12f2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_1a
    const-string v10, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1306

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1306

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1b
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1306

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :cond_1c
    const-string v10, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1d
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x131a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_7
.end method
