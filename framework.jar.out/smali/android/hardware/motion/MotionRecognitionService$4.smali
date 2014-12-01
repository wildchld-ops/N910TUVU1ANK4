.class Landroid/hardware/motion/MotionRecognitionService$4;
.super Landroid/hardware/motion/MotionRecognitionSettings;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0, p2, p3}, Landroid/hardware/motion/MotionRecognitionSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChangeMotionSettings(II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    shl-int v1, v6, v0

    and-int v2, v1, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V
    invoke-static {v2, v1, v6}, Landroid/hardware/motion/MotionRecognitionService;->access$1500(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1600(Landroid/hardware/motion/MotionRecognitionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v4, 0x1

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V
    invoke-static {v2, v1, v4}, Landroid/hardware/motion/MotionRecognitionService;->access$1700(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v5, 0x132

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v4, v5}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;I)Z

    move-result v4

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->access$602(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    :cond_0
    monitor-exit v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V
    invoke-static {v2, v1, v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1500(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1600(Landroid/hardware/motion/MotionRecognitionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v4, 0x0

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V
    invoke-static {v2, v1, v4}, Landroid/hardware/motion/MotionRecognitionService;->access$1700(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_3
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v2

    sget-object v3, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->SETTING:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    :goto_2
    return-void

    :cond_4
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v2

    sget-object v3, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->SETTING:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    goto :goto_2
.end method
