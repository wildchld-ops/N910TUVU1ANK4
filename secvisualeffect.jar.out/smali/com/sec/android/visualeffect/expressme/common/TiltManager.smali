.class public Lcom/sec/android/visualeffect/expressme/common/TiltManager;
.super Ljava/lang/Object;
.source "TiltManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpressMe_TiltManager"


# instance fields
.field private mTiltChangedListener:Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;

.field private mTilt_currnent_val:F

.field private mTilt_dest_val:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTilt_dest_val:F

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTilt_currnent_val:F

    return-void
.end method

.method private getNextTiltValue()F
    .locals 3

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTilt_currnent_val:F

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTilt_dest_val:F

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTilt_currnent_val:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x42480000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTilt_currnent_val:F

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTilt_currnent_val:F

    const v1, -0x42333333

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public handleSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTiltChangedListener:Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    const/high16 v1, -0x3ee00000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/high16 v0, -0x3ee00000

    :cond_0
    :goto_0
    iput v0, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTilt_dest_val:F

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTiltChangedListener:Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->getNextTiltValue()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;->onTiltChanged(F)V

    :cond_1
    return-void

    :cond_2
    const/high16 v1, 0x41200000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v0, 0x41200000

    goto :goto_0
.end method

.method public registerTiltChangedListener(Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTiltChangedListener:Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;

    return-void
.end method

.method public unregisterTiltChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->mTiltChangedListener:Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;

    return-void
.end method
