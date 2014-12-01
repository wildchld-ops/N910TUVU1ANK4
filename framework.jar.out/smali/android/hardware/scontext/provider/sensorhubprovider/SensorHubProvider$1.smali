.class Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;
.super Ljava/lang/Object;
.source "SensorHubProvider.java"

# interfaces
.implements Landroid/hardware/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;->this$0:Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 4

    iget-object v2, p1, Landroid/hardware/sensorhub/SensorHubEvent;->sensorhub:Landroid/hardware/sensorhub/SensorHub;

    invoke-virtual {v2}, Landroid/hardware/sensorhub/SensorHub;->getType()I

    move-result v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "Values"

    iget-object v3, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    iget-object v2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;->this$0:Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;

    # getter for: Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v2}, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->access$000(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v2, v3, v0}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
