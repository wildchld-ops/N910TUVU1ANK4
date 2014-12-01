.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerProviderForExtLib;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;
.source "PedometerProviderForExtLib.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic enable()V
    .locals 0

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->enable()V

    return-void
.end method

.method protected final getDependentService()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic occurTimeOut()V
    .locals 0

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->occurTimeOut()V

    return-void
.end method
