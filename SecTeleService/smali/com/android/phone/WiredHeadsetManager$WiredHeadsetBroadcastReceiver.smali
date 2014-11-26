.class Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WiredHeadsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiredHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WiredHeadsetManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/WiredHeadsetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/phone/WiredHeadsetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/WiredHeadsetManager;Lcom/android/phone/WiredHeadsetManager$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/WiredHeadsetManager;
    .param p2    # Lcom/android/phone/WiredHeadsetManager$1;

    invoke-direct {p0, p1}, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/phone/WiredHeadsetManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/phone/WiredHeadsetManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/WiredHeadsetManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/phone/WiredHeadsetManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/WiredHeadsetManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    # getter for: Lcom/android/phone/WiredHeadsetManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/WiredHeadsetManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/phone/WiredHeadsetManager;

    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    # invokes: Lcom/android/phone/WiredHeadsetManager;->onHeadsetConnection(Z)V
    invoke-static {v3, v1}, Lcom/android/phone/WiredHeadsetManager;->access$200(Lcom/android/phone/WiredHeadsetManager;Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method
