.class public abstract Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "AndroidProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method protected final getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public updateAPStatus(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/hardware/contextaware/manager/ContextProvider;->setAPStatus(I)V

    return-void
.end method
