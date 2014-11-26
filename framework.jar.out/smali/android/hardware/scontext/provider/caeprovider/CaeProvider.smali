.class public Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "CaeProvider.java"


# instance fields
.field private final mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field private final mContext:Landroid/content/Context;

.field private final mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private final mServiceNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;-><init>(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContext:Landroid/content/Context;

    const-string v1, "context_aware"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextAwareManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iput p2, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    iput-object p3, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0    # Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method


# virtual methods
.method public add()V
    .locals 3

    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method getListener()Landroid/hardware/contextaware/manager/ContextAwareListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method getManager()Landroid/hardware/contextaware/ContextAwareManager;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    return-object v0
.end method

.method public handleDiedBinder()V
    .locals 0

    return-void
.end method

.method public onBinderDied()V
    .locals 0

    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1    # Landroid/os/Bundle;

    return-object p1
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public requestToUpdate()V
    .locals 3

    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 9
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/16 v8, 0x3b

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v4, "step_cout_alert_step"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    const/4 v6, 0x7

    const-string v7, "step_cout_alert_step"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    :sswitch_1
    const-string v4, "auto_rotation_device_type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    const/16 v6, 0x8

    const-string v7, "auto_rotation_device_type"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    :sswitch_2
    const-string v4, "environment_sensor_type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "environment_sensor_type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v4, "environment_update_interval"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    const/16 v6, 0xd

    const-string v7, "environment_update_interval"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "wake_up_voice_mode"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v6, 0x35

    const-string/jumbo v7, "wake_up_voice_mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    :sswitch_4
    const-string v4, "mfp_nomove_duration_thrs"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v6, 0x9

    const-string v7, "mfp_nomove_duration_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_1
    const-string v4, "mfp_move_duration_thrs"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v6, 0xa

    const-string v7, "mfp_move_duration_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_2
    const-string v4, "mfp_move_min_duration_thrs"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v6, 0xb

    const-string v7, "mfp_move_min_duration_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_3
    const-string v4, "mfp_move_distance_thrs"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v6, 0xc

    const-string v7, "mfp_move_distance_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "shake_motion_strength"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v6, 0xe

    const-string v7, "shake_motion_strength"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_4
    const-string v4, "shake_motion_duration"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v6, 0xf

    const-string v7, "shake_motion_duration"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "temperature_alert_low_temperature"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v6, 0x14

    const-string v7, "temperature_alert_low_temperature"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_5
    const-string v4, "temperature_alert_high_temperature"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v6, 0x15

    const-string v7, "temperature_alert_high_temperature"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_6
    const-string v4, "temperature_alert_is_including"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v6, 0x16

    const-string v7, "temperature_alert_is_including"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IIZ)Z

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "specific_pose_alert_retention_time"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v6, 0x21

    const-string v7, "specific_pose_alert_retention_time"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_7
    const-string v4, "specific_pose_alert_minimum_angle"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v6, 0x22

    const-string v7, "specific_pose_alert_minimum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_8
    const-string v4, "specific_pose_alert_maximum_angle"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v6, 0x23

    const-string v7, "specific_pose_alert_maximum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_9
    const-string v4, "specific_pose_alert_moving_thrs"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v6, 0x24

    const-string v7, "specific_pose_alert_moving_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "sleep_monitor_sensibility"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v6, 0x2a

    const-string v7, "sleep_monitor_sensibility"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_a
    const-string v4, "sleep_monitor_sampling_interval"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v6, 0x2b

    const-string v7, "sleep_monitor_sampling_interval"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "activity_notification_ex_activity_filter"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "activity_notification_ex_activity_filter"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_b

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    const/16 v6, 0x26

    aget v7, v0, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    const-string v4, "activity_notification_ex_time_duration"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "activity_notification_ex_time_duration"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    const/16 v6, 0x27

    invoke-virtual {v4, v5, v6, v1}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "step_level_monitor_duration"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    const-string v6, "step_level_monitor_duration"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v8, v6}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "inactive_timer_device_type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v6, 0x39

    const-string v7, "inactive_timer_device_type"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_c
    const-string v4, "inactive_timer_duration"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const-string v6, "inactive_timer_duration"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v8, v6}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_d
    const-string v4, "inactive_timer_alert_count"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v6, 0x3c

    const-string v7, "inactive_timer_alert_count"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_e
    const-string v4, "inactive_timer_start_time"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v6, 0x37

    const-string v7, "inactive_timer_start_time"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    :cond_f
    const-string v4, "inactive_timer_end_time"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    const/16 v6, 0x38

    const-string v7, "inactive_timer_end_time"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "flat_motion_for_table_mode_duration"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    const/16 v6, 0x3d

    const-string v7, "flat_motion_for_table_mode_duration"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_4
        0xc -> :sswitch_5
        0x10 -> :sswitch_3
        0x17 -> :sswitch_6
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
        0x1e -> :sswitch_9
        0x21 -> :sswitch_a
        0x23 -> :sswitch_b
        0x24 -> :sswitch_c
    .end sparse-switch
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1    # I
    .param p2    # [B

    const/4 v0, 0x0

    return v0
.end method
