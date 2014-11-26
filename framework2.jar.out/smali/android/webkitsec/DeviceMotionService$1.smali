.class Landroid/webkitsec/DeviceMotionService$1;
.super Ljava/lang/Object;
.source "DeviceMotionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/DeviceMotionService;->sendErrorEvent()V
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
    sput-boolean v0, Landroid/webkitsec/DeviceMotionService$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/webkitsec/DeviceMotionService;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/DeviceMotionService$1;->this$0:Landroid/webkitsec/DeviceMotionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    sget-boolean v0, Landroid/webkitsec/DeviceMotionService$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService$1;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mIsRunning:Z
    invoke-static {v0}, Landroid/webkitsec/DeviceMotionService;->access$000(Landroid/webkitsec/DeviceMotionService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/DeviceMotionService$1;->this$0:Landroid/webkitsec/DeviceMotionService;

    # getter for: Landroid/webkitsec/DeviceMotionService;->mManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;
    invoke-static {v0}, Landroid/webkitsec/DeviceMotionService;->access$100(Landroid/webkitsec/DeviceMotionService;)Landroid/webkitsec/DeviceMotionAndOrientationManager;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/DeviceMotionAndOrientationManager;->onMotionChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;D)V

    :cond_1
    return-void
.end method
