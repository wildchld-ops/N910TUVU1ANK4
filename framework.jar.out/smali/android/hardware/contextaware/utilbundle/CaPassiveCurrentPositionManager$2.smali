.class Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x7

    const-string v2, ","

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "$GPGGA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "satelliteCount null"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # setter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I
    invoke-static {v2, v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$102(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Satellite Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
