.class Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const-string v1, "Accuracy is low"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v3

    invoke-static/range {v1 .. v8}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v11

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, v17

    invoke-virtual/range {v2 .. v15}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
