.class Lcom/android/keyguard/sec/ContextualEventManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ContextualEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager$2;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/16 v12, 0x64

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v8, "ContextualEventManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "received broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/keyguard/sec/ContextualEventManager$2;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/keyguard/sec/ContextualEventManager;->access$600(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v8, "ContextualEventManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/16 v8, 0x1336

    iput v8, v4, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "requestClass"

    const-string v9, "flightmode"

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "isFlightMode"

    invoke-virtual {v3, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/android/keyguard/sec/ContextualEventManager$2;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/sec/ContextualEventManager;->access$700(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "com.android.sms.action.CLEAR_ALL"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/keyguard/sec/ContextualEventManager$2;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/ContextualEventManager;->clearMissedEvent()V

    goto :goto_0

    :cond_2
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v0, 0x64

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "2.0"

    const-string v9, "version"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v8, "old_user_id"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ge v5, v12, :cond_0

    if-ge v6, v12, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/keyguard/sec/ContextualEventManager$2;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/ContextualEventManager;->onUserSwitched()V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/keyguard/sec/ContextualEventManager$2;->this$0:Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-virtual {v8}, Lcom/android/keyguard/sec/ContextualEventManager;->onUserSwitched()V

    goto :goto_0
.end method
