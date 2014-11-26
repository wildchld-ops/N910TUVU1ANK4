.class Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;
.super Landroid/os/Handler;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaPowerManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/16 v5, -0x2e

    const/16 v4, -0x2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1001

    if-ne v2, v3, :cond_1

    const-string v2, "context is null"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_2

    const-string v2, "intent is null"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1003

    if-ne v2, v3, :cond_3

    const-string v2, "AP_SLEEP"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v5, v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1004

    if-ne v2, v3, :cond_4

    const-string v2, "AP_WAKEUP"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v4, v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v4}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1005

    if-ne v2, v3, :cond_5

    const-string v2, "POWER_CONNECTED"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2a

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v3}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1006

    if-ne v2, v3, :cond_0

    const-string v2, "POWER_DISCONNECTED"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x29

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v3}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0
.end method
