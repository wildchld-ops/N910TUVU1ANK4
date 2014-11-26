.class Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/util/DirectCallingManager;
    .param p2    # Lcom/android/mms/util/DirectCallingManager$1;

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public getRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Mms/DirectCallingManager"

    const-string v3, "onReceive - unlocked"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mPaused:Z
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$900(Lcom/android/mms/util/DirectCallingManager;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # invokes: Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$600(Lcom/android/mms/util/DirectCallingManager;)V

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # invokes: Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/android/mms/util/DirectCallingManager;->access$700(Lcom/android/mms/util/DirectCallingManager;Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$1000(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$1000(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->getRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$1000(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->setRegistered(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/android/mms/util/DirectCallingManager;->access$1000(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v2, v3}, Lcom/android/mms/util/DirectCallingManager;->access$1002(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setRegistered(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    return-void
.end method
