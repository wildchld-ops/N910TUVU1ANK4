.class Lcom/samsung/location/SLocationManager$GeoListenerTransport$1;
.super Landroid/os/Handler;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/location/SLocationManager$GeoListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SGeofenceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/location/SLocationManager$GeoListenerTransport;

.field final synthetic val$this$0:Lcom/samsung/location/SLocationManager;


# direct methods
.method constructor <init>(Lcom/samsung/location/SLocationManager$GeoListenerTransport;Lcom/samsung/location/SLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/location/SLocationManager$GeoListenerTransport$1;->this$1:Lcom/samsung/location/SLocationManager$GeoListenerTransport;

    iput-object p2, p0, Lcom/samsung/location/SLocationManager$GeoListenerTransport$1;->val$this$0:Lcom/samsung/location/SLocationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/samsung/location/SLocationManager$GeoListenerTransport$1;->this$1:Lcom/samsung/location/SLocationManager$GeoListenerTransport;

    # invokes: Lcom/samsung/location/SLocationManager$GeoListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/location/SLocationManager$GeoListenerTransport;->access$100(Lcom/samsung/location/SLocationManager$GeoListenerTransport;Landroid/os/Message;)V

    return-void
.end method
