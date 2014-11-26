.class Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5600(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v1

    const-string v3, "mBlankUnblankAllDisplaysRunnable is running now. "

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$5402(Lcom/android/server/power/PowerManagerService;Z)Z

    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5700(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5800(Z)V

    const-string v1, "nativeSetInteractive(false)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] blankAllDisplays() : blankAllDisplaysFromPowerManage"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsUnblankDone:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$6002(Lcom/android/server/power/PowerManagerService;Z)Z

    const-string v1, "mDisplayManagerService.blankAllDisplaysFromPowerManager()"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lcd off:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v4, v4, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$6100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v4

    iget v4, v4, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/Debug;->reportInsomon(ILjava/lang/String;)V

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6200(Z)V

    const-string v1, "nativeSetAutoSuspend(true)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$6302(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J
    invoke-static {v1, v3, v4}, Lcom/android/server/power/PowerManagerService;->access$6402(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6500(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mReportWLtoInsomonRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "PowerManagerService"

    const-string v3, "SecHardwareInterface.setBatteryADC : false"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "lcd"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6200(Z)V

    const-string v1, "nativeSetAutoSuspend(false)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] unblankAllDisplays() : unblankAllDisplaysFromPowerManager"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsUnblankDone:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$6002(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    const-string v1, "mDisplayManagerService.unblankAllDisplaysFromPowerManager()"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5800(Z)V

    const-string v1, "nativeSetInteractive(true)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v1

    const-string/jumbo v3, "wakeUp() or wakeUpFromNative()"

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6500(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeupReasonForInsomon:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/Debug;->reportInsomon(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v3, ""

    # setter for: Lcom/android/server/power/PowerManagerService;->mWakeupReasonForInsomon:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$6802(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mReportWLtoInsomonRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "PowerManagerService"

    const-string v3, "SecHardwareInterface.setBatteryADC : true"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "lcd"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsFakeShutdown:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$7002(Lcom/android/server/power/PowerManagerService;Z)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
