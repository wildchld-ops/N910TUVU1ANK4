.class public Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "SensorHubProvider.java"


# instance fields
.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private final mRate:I

.field private final mSensorHub:Landroid/hardware/sensorhub/SensorHub;

.field private final mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/hardware/scontext/provider/EventListener;
    .param p3    # I
    .param p4    # I

    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    new-instance v0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;-><init>(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iput p4, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mRate:I

    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iput-object p2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-virtual {v0, p3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Landroid/hardware/sensorhub/SensorHub;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0    # Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;

    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method


# virtual methods
.method public add()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Landroid/hardware/sensorhub/SensorHub;

    iget v3, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z

    return-void
.end method

.method getListener()Landroid/hardware/sensorhub/SensorHubEventListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-object v0
.end method

.method getManager()Landroid/hardware/sensorhub/SensorHubManager;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    return-object v0
.end method

.method public handleDiedBinder()V
    .locals 0

    return-void
.end method

.method public onBinderDied()V
    .locals 0

    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1    # Landroid/os/Bundle;

    return-object p1
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Landroid/hardware/sensorhub/SensorHub;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;)V

    return-void
.end method

.method public requestToUpdate()V
    .locals 0

    return-void
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    return-void
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1    # I
    .param p2    # [B

    const/4 v0, 0x0

    return v0
.end method
