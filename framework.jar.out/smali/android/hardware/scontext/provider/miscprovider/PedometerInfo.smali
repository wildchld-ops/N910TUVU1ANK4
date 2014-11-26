.class Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
.super Ljava/lang/Object;
.source "PedometerVendorImpl.java"


# instance fields
.field calorie:D

.field distance:D

.field runDownStepCnt:J

.field runFlatStepCnt:J

.field runUpStepCnt:J

.field speed:D

.field status:I

.field totalStepCnt:J

.field walkDownStepCnt:J

.field walkFlatStepCnt:J

.field walkUpStepCnt:J

.field walkingFrequency:D


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->speed:D

    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkingFrequency:D

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->status:I

    return-void
.end method
