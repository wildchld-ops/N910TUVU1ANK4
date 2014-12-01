.class Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;
.super Ljava/lang/Object;
.source "LppLocationManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method private constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;->this$0:Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager$GpsStatusListener;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocationManager;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v0, "LppLocationManager"

    const-string v1, "GPS engine calcuates first fix"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
