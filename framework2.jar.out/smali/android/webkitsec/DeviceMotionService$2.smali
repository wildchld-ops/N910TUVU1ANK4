.class Landroid/webkitsec/DeviceMotionService$2;
.super Ljava/lang/Object;
.source "DeviceMotionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/DeviceMotionService;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/webkitsec/DeviceMotionService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/webkitsec/DeviceMotionService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/DeviceMotionService$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/webkitsec/DeviceMotionService;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Landroid/webkitsec/DeviceMotionService$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mIsRunning:Z
    invoke-static {v0}, Landroid/webkitsec/DeviceMotionService;->access$000(Landroid/webkitsec/DeviceMotionService;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mLastAcceleration:[F
    invoke-static {v0}, Landroid/webkitsec/DeviceMotionService;->access$200(Landroid/webkitsec/DeviceMotionService;)[F

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;
    invoke-static {v0}, Landroid/webkitsec/DeviceMotionService;->access$100(Landroid/webkitsec/DeviceMotionService;)Landroid/webkitsec/DeviceMotionAndOrientationManager;

    move-result-object v0

    new-instance v1, Ljava/lang/Double;

    iget-object v2, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mLastAcceleration:[F
    invoke-static {v2}, Landroid/webkitsec/DeviceMotionService;->access$200(Landroid/webkitsec/DeviceMotionService;)[F

    move-result-object v2

    aget v2, v2, v6

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    iget-object v3, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mLastAcceleration:[F
    invoke-static {v3}, Landroid/webkitsec/DeviceMotionService;->access$200(Landroid/webkitsec/DeviceMotionService;)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    new-instance v3, Ljava/lang/Double;

    iget-object v4, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mLastAcceleration:[F
    invoke-static {v4}, Landroid/webkitsec/DeviceMotionService;->access$200(Landroid/webkitsec/DeviceMotionService;)[F

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    const-wide/high16 v4, 0x4059000000000000L

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/DeviceMotionAndOrientationManager;->onMotionChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;D)V

    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkitsec/DeviceMotionService;->access$400(Landroid/webkitsec/DeviceMotionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkitsec/DeviceMotionService;->access$300(Landroid/webkitsec/DeviceMotionService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService$2;->this$0:Landroid/webkitsec/DeviceMotionService;

    # setter for: Landroid/webkitsec/DeviceMotionService;->mHaveSentErrorEvent:Z
    invoke-static {v0, v6}, Landroid/webkitsec/DeviceMotionService;->access$502(Landroid/webkitsec/DeviceMotionService;Z)Z

    goto :goto_0
.end method
