.class Landroid/hardware/motion/MotionRecognitionSmartFace$1;
.super Ljava/lang/Object;
.source "MotionRecognitionSmartFace.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionSmartFace;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionSmartFace;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionSmartFace;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSmartFace$1;->this$0:Landroid/hardware/motion/MotionRecognitionSmartFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 3

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace$1;->this$0:Landroid/hardware/motion/MotionRecognitionSmartFace;

    # getter for: Landroid/hardware/motion/MotionRecognitionSmartFace;->mbOldFaceDetected:Z
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionSmartFace;->access$000(Landroid/hardware/motion/MotionRecognitionSmartFace;)Z

    move-result v0

    iget-boolean v1, p1, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    if-eq v0, v1, :cond_0

    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartFaceManager onInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSmartFace$1;->this$0:Landroid/hardware/motion/MotionRecognitionSmartFace;

    # getter for: Landroid/hardware/motion/MotionRecognitionSmartFace;->mbOldFaceDetected:Z
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionSmartFace;->access$000(Landroid/hardware/motion/MotionRecognitionSmartFace;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace$1;->this$0:Landroid/hardware/motion/MotionRecognitionSmartFace;

    iget-boolean v1, p1, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    # setter for: Landroid/hardware/motion/MotionRecognitionSmartFace;->mbOldFaceDetected:Z
    invoke-static {v0, v1}, Landroid/hardware/motion/MotionRecognitionSmartFace;->access$002(Landroid/hardware/motion/MotionRecognitionSmartFace;Z)Z

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace$1;->this$0:Landroid/hardware/motion/MotionRecognitionSmartFace;

    iget-boolean v1, p1, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionSmartFace;->onChangeSmartFaceInfo(Z)V

    :cond_0
    return-void
.end method
