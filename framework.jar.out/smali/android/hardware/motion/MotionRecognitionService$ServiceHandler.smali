.class final Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;
.super Landroid/os/Handler;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field mHandlerLock:Ljava/lang/Object;

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->mHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method private checkListener(III)Z
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v2, 0x40000000

    and-int/2addr v2, p2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/hardware/motion/MotionRecognitionSettings;->isSettingMotion(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/hardware/motion/MotionRecognitionSettings;->isOpenAPIMotion(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_1
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_0

    const/high16 v2, 0x20000

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    goto :goto_0

    :sswitch_2
    and-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_4

    goto :goto_0

    :sswitch_3
    and-int/lit16 v2, p3, 0x80

    if-nez v2, :cond_0

    and-int/lit16 v2, p3, 0x100

    if-eqz v2, :cond_4

    goto :goto_0

    :sswitch_4
    and-int/lit16 v2, p3, 0x800

    if-eqz v2, :cond_4

    goto :goto_0

    :sswitch_5
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_4

    goto :goto_0

    :sswitch_6
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_0

    const/high16 v2, 0x80000

    and-int/2addr v2, p3

    if-eqz v2, :cond_4

    goto :goto_0

    :sswitch_7
    and-int/lit16 v2, p3, 0x400

    if-eqz v2, :cond_4

    goto :goto_0

    :sswitch_8
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x1c -> :sswitch_8
        0x1d -> :sswitch_8
        0x1e -> :sswitch_8
        0x1f -> :sswitch_8
        0x22 -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x3d -> :sswitch_6
        0x44 -> :sswitch_7
        0x48 -> :sswitch_2
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_4
        0x56 -> :sswitch_1
        0x61 -> :sswitch_4
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1    # Landroid/os/Message;

    const/16 v10, 0x64

    if-eqz p1, :cond_0

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Landroid/hardware/motion/MREvent;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionService$Listener;

    invoke-virtual {v7}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v8

    iget v10, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    iget v11, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    invoke-direct {p0, v8, v10, v11}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->checkListener(III)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v7}, Landroid/hardware/motion/MotionRecognitionService$Listener;->callback(Landroid/hardware/motion/MREvent;)V

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :catch_0
    move-exception v3

    const-string v8, "MotionRecognitionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClassCastException in handleMessage: msg.obj = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$1300(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->recycle(Landroid/hardware/motion/MREvent;)V

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$2500(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-ge v2, v10, :cond_4

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v10, 0x1

    iput-boolean v10, v8, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "MotionRecognitionService"

    const-string v10, " Cancel reactive alert mode "

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$2600(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->disableAccINT()V

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)V

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v11, 0x132

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v10, v11}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;I)Z

    move-result v10

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v8, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$602(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    :cond_3
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mFlipCover:Landroid/hardware/motion/MotionRecognitionFlipCover;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$2700(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionFlipCover;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/motion/MotionRecognitionFlipCover;->enableFlipCover()V

    :cond_4
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$2500(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v8, "MotionRecognitionService"

    const-string v9, " handler : SCREEN_ON end"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    :pswitch_2
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$2500(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-ge v2, v10, :cond_8

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v10, 0x0

    iput-boolean v10, v8, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    const/4 v1, 0x0

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/motion/MotionRecognitionService$Listener;

    iget v8, v6, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    const/high16 v10, 0x100000

    and-int/2addr v8, v10

    if-eqz v8, :cond_5

    const-string v8, "MotionRecognitionService"

    const-string v10, "  SMART_RELAY is activated"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)V

    :cond_7
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mFlipCover:Landroid/hardware/motion/MotionRecognitionFlipCover;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$2700(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionFlipCover;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/motion/MotionRecognitionFlipCover;->disableFlipCover()V

    :cond_8
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$2500(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v8, "MotionRecognitionService"

    const-string v9, " handler : SCREEN_OFF end "

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v8

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
