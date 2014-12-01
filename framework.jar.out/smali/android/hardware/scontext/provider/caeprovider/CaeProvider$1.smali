.class Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;
.super Ljava/lang/Object;
.source "CaeProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_a
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_f
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_10
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_11
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_12
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_13
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_14
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_15
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_16
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_17
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_18
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_19
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1a
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1b
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1c
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_1d

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1d
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1e
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1f
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    if-ne p1, v0, :cond_20

    const-string v0, "DataType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_20
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x22

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_21
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_22

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x23

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_22
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method
