.class Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$3;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationListener;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$3;->this$0:Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;
    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->access$500(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method
