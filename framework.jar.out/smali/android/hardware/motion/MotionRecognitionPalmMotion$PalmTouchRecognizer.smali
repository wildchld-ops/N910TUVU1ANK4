.class Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmTouchRecognizer"
.end annotation


# instance fields
.field private final PALM_TOUCH_SIZE_TH2:I

.field private PALM_TOUCH_X_VAR:F

.field private mPalmDown:Z

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;


# direct methods
.method private constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V
    .locals 1

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->PALM_TOUCH_SIZE_TH2:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;Landroid/hardware/motion/MotionRecognitionPalmMotion$1;)V
    .locals 0
    .param p1    # Landroid/hardware/motion/MotionRecognitionPalmMotion;
    .param p2    # Landroid/hardware/motion/MotionRecognitionPalmMotion$1;

    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;-><init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;)Z
    .locals 1
    .param p0    # Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;Z)Z
    .locals 0
    .param p0    # Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z

    return p1
.end method


# virtual methods
.method public Initialize(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V
    .locals 2
    .param p1    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenHeight:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1600(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v0

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v1

    if-le v0, v1, :cond_0

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenWidth:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1700(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    :goto_0
    return-void

    :cond_0
    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mScreenHeight:I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1600(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    goto :goto_0
.end method

.method public Process(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)V
    .locals 6
    .param p1    # Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z

    if-nez v0, :cond_1

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)[I

    move-result-object v0

    aget v0, v0, v4

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42a00000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarX:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1200(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)[I

    move-result-object v2

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->SvarY:F
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1300(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)F

    move-result v0

    iget v1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)[I

    move-result-object v2

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmSweepRecognizer:Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$600(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmSweepRecognizer;->setSweepDown(Z)V

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z

    if-ne v0, v5, :cond_1

    const-string v0, "PalmMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Surface Touch Event] Palm touch Down, PALM_TOUCH_X_VAR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->Nd:[I
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1100(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)[I

    move-result-object v3

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mGestureSurfaceTouch:Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$1500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;

    move-result-object v0

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1400(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->onPalm(Landroid/view/MotionEvent;)Z

    :cond_1
    iget v0, p1, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mAction:I

    if-ne v0, v5, :cond_2

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->mPalmDown:Z

    if-ne v0, v5, :cond_2

    const-string v0, "PalmMotion"

    const-string v1, "[Surface Touch Event] Palm touch UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$PalmTouchRecognizer;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mGestureSurfaceTouch:Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$1500(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;

    move-result-object v0

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;->access$1400(Landroid/hardware/motion/MotionRecognitionPalmMotion$SurfaceTouchSharingData;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion$GestureSurfaceTouch;->onPalm(Landroid/view/MotionEvent;)Z

    :cond_2
    return-void
.end method
