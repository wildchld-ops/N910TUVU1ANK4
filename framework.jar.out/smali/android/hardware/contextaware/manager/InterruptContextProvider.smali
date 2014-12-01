.class public Landroid/hardware/contextaware/manager/InterruptContextProvider;
.super Landroid/hardware/contextaware/manager/ContextProviderDecorator;
.source "InterruptContextProvider.java"


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/manager/ContextComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/ContextProviderDecorator;-><init>(Landroid/hardware/contextaware/manager/ContextComponent;)V

    return-void
.end method


# virtual methods
.method public start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->initialize()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->enableForStart(I)V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->registerApPowerObserver()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyFaultDetectionResult()V

    :cond_0
    return-void
.end method

.method public stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->unregisterApPowerObserver()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->disableForStop(I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyFaultDetectionResult()V

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextComponent;->terminate()V

    return-void
.end method
