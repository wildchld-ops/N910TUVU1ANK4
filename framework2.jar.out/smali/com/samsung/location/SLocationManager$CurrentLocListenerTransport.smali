.class Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
.super Lcom/samsung/location/ISCurrentLocListener$Stub;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/location/SLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentLocListenerTransport"
.end annotation


# static fields
.field public static final TYPE_CURRENT_LOCATION:I = 0x1


# instance fields
.field private mListener:Lcom/samsung/location/SCurrentLocListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/location/SLocationManager;


# direct methods
.method constructor <init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SCurrentLocListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->this$0:Lcom/samsung/location/SLocationManager;

    invoke-direct {p0}, Lcom/samsung/location/ISCurrentLocListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->mListener:Lcom/samsung/location/SCurrentLocListener;

    new-instance v0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport$1;-><init>(Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;Lcom/samsung/location/SLocationManager;)V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->mListener:Lcom/samsung/location/SCurrentLocListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/samsung/location/SCurrentLocListener;->onCurrentLocation(Landroid/location/Location;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onCurrentLocation(Landroid/location/Location;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
