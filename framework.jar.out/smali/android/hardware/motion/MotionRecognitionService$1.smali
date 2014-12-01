.class Landroid/hardware/motion/MotionRecognitionService$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive : ACTION_SCREEN_ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    move-result-object v7

    const/16 v8, 0x56

    invoke-virtual {v7, v8}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive : ACTION_SCREEN_OFF"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    move-result-object v7

    const/16 v8, 0x57

    invoke-virtual {v7, v8}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v10, v7, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v10, v7, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    goto :goto_0

    :cond_3
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J
    invoke-static {v7, v8, v9}, Landroid/hardware/motion/MotionRecognitionService;->access$102(Landroid/hardware/motion/MotionRecognitionService;J)J

    goto :goto_0

    :cond_5
    const-string v7, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "isEnable"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mReceiver.onReceive : ACTION_MOTIONS_SETTINGS_CHANGED - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_7

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSettings;->updateCurrentSettings()V

    :cond_6
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)V

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v9, 0x132

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v8, v9}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;I)Z

    move-result v8

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v7, v8}, Landroid/hardware/motion/MotionRecognitionService;->access$602(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mregisteredEvents_open:I
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$800(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)V

    goto/16 :goto_0

    :cond_8
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive : ACTION_USER_PRESENT  :: UNLOCK SCREEN"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive :VOLUME_CHANGED "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v10, [I

    aput v10, v1, v9

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.GRIPSENSOR_CP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "cmd"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mReceiver.onReceive :CALL_ACTION_CHANGED : GRIPSENSOR_CP, callAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionGrip;->enableGripSensor()V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionGrip;->disableGripSensor()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.FLATMOTION_CP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "cmd"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mReceiver.onReceive :CALL_ACTION_CHANGED : FLATMOTION_CP, callAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionGrip;->enableFlatMotion()V

    const-string v7, "MotionRecognitionService"

    const-string v8, "  .enableFlatMotion"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionGrip;->disableFlatMotion()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.TURNOVERMOTION_CP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "cmd"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mReceiver.onReceive :CALL_ACTION_CHANGED : TURNOVERMOTION_CP, callAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionGrip;->enableTurnOverMotion()V

    const-string v7, "MotionRecognitionService"

    const-string v8, "  .enableTurnOverMotion"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionGrip;->disableTurnOverMotion()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.PROXIMITY_CP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "cmd"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mReceiver.onReceive :CALL_ACTION_CHANGED : PROXIMITY_CP, callAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionGrip;->enableProxSensor()V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionGrip;->disableProxSensor()V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SARDEVICE_CP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "cmd"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "device"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mReceiver.onReceive :CALL_ACTION_CHANGED : SARDEVICE_CP, callAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deviceID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    shl-int v5, v10, v6

    and-int v7, v5, v2

    if-eqz v7, :cond_13

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const-string v7, "MotionRecognitionService"

    const-string v8, "DEFAULT  "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_1
    const-string v7, "MotionRecognitionService"

    const-string v8, "SAR_GRIP "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->enableGripSensor()V

    goto :goto_2

    :cond_14
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->disableGripSensor()V

    goto :goto_2

    :pswitch_2
    const-string v7, "MotionRecognitionService"

    const-string v8, "SAR_PROX "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->enableProxSensor()V

    goto :goto_2

    :cond_15
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->disableProxSensor()V

    goto :goto_2

    :pswitch_3
    const-string v7, "MotionRecognitionService"

    const-string v8, "SAR_FLAT "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->enableFlatMotion()V

    goto :goto_2

    :cond_16
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->disableFlatMotion()V

    goto :goto_2

    :pswitch_4
    const-string v7, "MotionRecognitionService"

    const-string v8, "SAR_ACCFLAT "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->enableFlatMotionAP()V

    goto/16 :goto_2

    :cond_17
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->disableFlatMotionAP()V

    goto/16 :goto_2

    :pswitch_5
    const-string v7, "MotionRecognitionService"

    const-string v8, "SAR_TURNOVER "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->enableTurnOverMotion()V

    goto/16 :goto_2

    :cond_18
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->disableTurnOverMotion()V

    goto/16 :goto_2

    :pswitch_6
    const-string v7, "MotionRecognitionService"

    const-string v8, "SAR_PORTRAIT "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->enablePortraitMotion()V

    goto/16 :goto_2

    :cond_19
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionSAR;->disablePortraitMotion()V

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "android.intent.extra.DOCK_STATE"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() getIntExtra "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1b

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v7

    sget-object v8, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->DOCKINGSTATION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v7, v8}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    const-string v7, "MotionRecognitionService"

    const-string v8, "SERVICETYPE_MOTION stop"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v7

    sget-object v8, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->DOCKINGSTATION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v7, v8}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    const-string v7, "MotionRecognitionService"

    const-string v8, "SERVICETYPE_MOTION start"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
