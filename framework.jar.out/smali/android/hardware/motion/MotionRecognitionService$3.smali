.class Landroid/hardware/motion/MotionRecognitionService$3;
.super Landroid/hardware/motion/MotionRecognitionSmartFace;
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
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0, p2}, Landroid/hardware/motion/MotionRecognitionSmartFace;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChangeSmartFaceInfo(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    add-int/lit16 v2, v0, 0xc8

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeSmartFaceStatus(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0xc8

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;I)Z

    goto :goto_0
.end method
