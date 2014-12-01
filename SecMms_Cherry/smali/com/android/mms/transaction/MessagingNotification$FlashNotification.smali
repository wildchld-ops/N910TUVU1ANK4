.class public Lcom/android/mms/transaction/MessagingNotification$FlashNotification;
.super Ljava/lang/Thread;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlashNotification"
.end annotation


# instance fields
.field private mFlashcontext:Landroid/content/Context;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private motionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification$1;-><init>(Lcom/android/mms/transaction/MessagingNotification$FlashNotification;)V

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mFlashcontext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public flashOff()V
    .locals 5

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "flashOff"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1300()Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    # setter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->access$1302(Landroid/os/ICustomFrequencyManager;)Landroid/os/ICustomFrequencyManager;

    :cond_0
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1300()Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1300()Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    const-string v3, "CLOCK_SET_TORCH_LIGHT"

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->TORCH_BRIGHTNESS_OFF:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1500()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "flashOff End"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->motionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Mms/MessagingNotification"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flashOn()V
    .locals 5

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "flashOn"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1300()Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    # setter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->access$1302(Landroid/os/ICustomFrequencyManager;)Landroid/os/ICustomFrequencyManager;

    :cond_0
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1300()Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1300()Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    const-string v3, "CLOCK_SET_TORCH_LIGHT"

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->TORCH_BRIGHTNESS_STANDARD:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1400()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1300()Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    const-string v3, "CLOCK_SET_TORCH_LIGHT"

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->TORCH_BRIGHTNESS_OFF:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1500()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1300()Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    const-string v3, "CLOCK_SET_TORCH_LIGHT"

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->TORCH_BRIGHTNESS_STANDARD:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$1400()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "flashOn"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->flashOff()V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Mms/MessagingNotification"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mFlashcontext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->motionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->motionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->flashOn()V

    return-void
.end method
