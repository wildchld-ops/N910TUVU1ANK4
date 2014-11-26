.class public Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "EnvironmentImpl.java"


# instance fields
.field private final mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/hardware/scontext/provider/EventListener;

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, p3}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Landroid/hardware/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    return-void
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const-string v2, "Temperature"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    const-string v2, "Humidity"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    const-string v2, "EnvSensorType"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "Temperature"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v2, "Humidity"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p1
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 5
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const-string v1, "environment_sensor_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v3, 0xd

    const-string v4, "environment_update_interval"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_0
    return-void
.end method
