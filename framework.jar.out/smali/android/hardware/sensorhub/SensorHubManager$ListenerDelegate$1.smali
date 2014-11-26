.class Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;-><init>(Landroid/hardware/sensorhub/SensorHubManager;Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/sensorhub/SensorHubManager;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;->this$1:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;->val$this$0:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/sensorhub/SensorHubEvent;

    iget-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;->this$1:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    # getter for: Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;
    invoke-static {v1}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->access$100(Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;)Landroid/hardware/sensorhub/SensorHubEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/sensorhub/SensorHubEventListener;->onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V

    # getter for: Landroid/hardware/sensorhub/SensorHubManager;->sPool:Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->access$200()Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->returnToPool(Landroid/hardware/sensorhub/SensorHubEvent;)V

    return-void
.end method
