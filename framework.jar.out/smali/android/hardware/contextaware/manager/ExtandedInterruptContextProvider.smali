.class public Landroid/hardware/contextaware/manager/ExtandedInterruptContextProvider;
.super Landroid/hardware/contextaware/manager/ContextProviderDecorator;
.source "ExtandedInterruptContextProvider.java"


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

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method

.method public stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProviderDecorator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    return-void
.end method
