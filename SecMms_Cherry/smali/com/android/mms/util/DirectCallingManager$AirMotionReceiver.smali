.class Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirMotionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v1, p1}, Lcom/android/mms/util/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$500(Lcom/android/mms/util/DirectCallingManager;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-virtual {v1, p1}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # invokes: Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$600(Lcom/android/mms/util/DirectCallingManager;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # invokes: Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/mms/util/DirectCallingManager;->access$700(Lcom/android/mms/util/DirectCallingManager;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$800(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    # getter for: Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$800(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/util/DirectCallingManager;->mAirMotionReceiver:Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;
    invoke-static {v1, v2}, Lcom/android/mms/util/DirectCallingManager;->access$802(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;)Lcom/android/mms/util/DirectCallingManager$AirMotionReceiver;

    goto :goto_0
.end method
