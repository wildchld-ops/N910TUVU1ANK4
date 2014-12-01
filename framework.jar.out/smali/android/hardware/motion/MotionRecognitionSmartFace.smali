.class public abstract Landroid/hardware/motion/MotionRecognitionSmartFace;
.super Ljava/lang/Object;
.source "MotionRecognitionSmartFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field private mFaceInfoListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field private mIsDockingDevice:Z

.field private mIsReason:[Z

.field private mIsrunningSmartFace:Z

.field private mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

.field private mbOldFaceDetected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mbOldFaceDetected:Z

    iput-boolean v6, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsrunningSmartFace:Z

    iput-boolean v6, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsDockingDevice:Z

    sget-object v4, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->END:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v4}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Z

    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsReason:[Z

    invoke-static {}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->values()[Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsReason:[Z

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->ordinal()I

    move-result v5

    aput-boolean v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsReason:[Z

    sget-object v5, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->DOCKINGSTATION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v5}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->ordinal()I

    move-result v5

    aput-boolean v7, v4, v5

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsReason:[Z

    sget-object v5, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->CAMERA_MOTION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v5}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->ordinal()I

    move-result v5

    aput-boolean v7, v4, v5

    new-instance v4, Landroid/hardware/motion/MotionRecognitionSmartFace$1;

    invoke-direct {v4, p0}, Landroid/hardware/motion/MotionRecognitionSmartFace$1;-><init>(Landroid/hardware/motion/MotionRecognitionSmartFace;)V

    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mFaceInfoListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionSmartFace;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mbOldFaceDetected:Z

    return v0
.end method

.method static synthetic access$002(Landroid/hardware/motion/MotionRecognitionSmartFace;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mbOldFaceDetected:Z

    return p1
.end method


# virtual methods
.method public disableFaceDetector()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mbOldFaceDetected:Z

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsrunningSmartFace:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsrunningSmartFace:Z

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->stopAsync()V

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsrunningSmartFace:Z

    invoke-virtual {p0, v0}, Landroid/hardware/motion/MotionRecognitionSmartFace;->onChangeSmartFaceStatus(Z)V

    const-string v0, "MotionRecognitionService"

    const-string v1, "SERVICETYPE_MOTION stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsReason:[Z

    invoke-virtual {p1}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SERVICETYPE_MOTION Condition changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector()V

    return-void
.end method

.method public enableFaceDetector()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mFaceInfoListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/smartface/SmartFaceManager;->setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsrunningSmartFace:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsrunningSmartFace:Z

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/smartface/SmartFaceManager;->startAsync(I)V

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsrunningSmartFace:Z

    invoke-virtual {p0, v0}, Landroid/hardware/motion/MotionRecognitionSmartFace;->onChangeSmartFaceStatus(Z)V

    const-string v0, "MotionRecognitionService"

    const-string v1, "SERVICETYPE_MOTION start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v0, "MotionRecognitionService"

    const-string v1, "can not connect the fd service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsReason:[Z

    invoke-virtual {p1}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->getSequence()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aput-boolean v7, v5, v6

    sget-object v5, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->MOTION_STARTSTOP:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsReason:[Z

    sget-object v6, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->CAMERA_MOTION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v6}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->getSequence()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aput-boolean v7, v5, v6

    :cond_0
    const-string v5, "MotionRecognitionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SERVICETYPE_MOTION Condition changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->values()[Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    sget-object v5, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->END:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    if-ne v1, v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionSmartFace;->mIsReason:[Z

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->getSequence()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_1

    const-string v5, "MotionRecognitionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SERVICETYPE_MOTION can\'t start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector()V

    :cond_4
    return-void
.end method

.method public abstract onChangeSmartFaceInfo(Z)V
.end method

.method public abstract onChangeSmartFaceStatus(Z)V
.end method
