.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/VoiceLibProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "VoiceLibProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method protected final getInstructionForDisable()B
    .locals 1

    const/16 v0, -0x1e

    return v0
.end method

.method protected final getInstructionForEnable()B
    .locals 1

    const/16 v0, -0x1f

    return v0
.end method
