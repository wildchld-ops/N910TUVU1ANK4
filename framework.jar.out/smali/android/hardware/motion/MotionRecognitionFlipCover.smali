.class public Landroid/hardware/motion/MotionRecognitionFlipCover;
.super Ljava/lang/Object;
.source "MotionRecognitionFlipCover.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static mSample:I


# instance fields
.field private mIsLightSensorExist:Z

.field private mPostLightVal:I

.field private mPostProxVal:I

.field private mProxClosed:Z

.field private mProxEnabled:Z

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private msspenabled:Z

.field private final mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;

.field private final sensorLightTestListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final sensorProxListener:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mSample:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Z

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->msspenabled:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxClosed:Z

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mIsLightSensorExist:Z

    new-instance v0, Landroid/hardware/motion/MotionRecognitionFlipCover$1;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionFlipCover$1;-><init>(Landroid/hardware/motion/MotionRecognitionFlipCover;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionFlipCover$2;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionFlipCover$2;-><init>(Landroid/hardware/motion/MotionRecognitionFlipCover;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorLightTestListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionFlipCover$3;-><init>(Landroid/hardware/motion/MotionRecognitionFlipCover;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorProxListener:Landroid/hardware/SensorEventListener;

    iput-boolean p2, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->msspenabled:Z

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostLightVal:I

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->msspenabled:Z

    if-ne v0, v2, :cond_0

    const-string v0, "scontext"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mIsLightSensorExist:Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionFlipCover;)I
    .locals 1
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostLightVal:I

    return v0
.end method

.method static synthetic access$002(Landroid/hardware/motion/MotionRecognitionFlipCover;I)I
    .locals 0
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;
    .param p1    # I

    iput p1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostLightVal:I

    return p1
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z
    .locals 1
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z

    return v0
.end method

.method static synthetic access$102(Landroid/hardware/motion/MotionRecognitionFlipCover;Z)Z
    .locals 0
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z

    return p1
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorProxListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z
    .locals 1
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxClosed:Z

    return v0
.end method

.method static synthetic access$402(Landroid/hardware/motion/MotionRecognitionFlipCover;Z)Z
    .locals 0
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxClosed:Z

    return p1
.end method

.method static synthetic access$500(Landroid/hardware/motion/MotionRecognitionFlipCover;)I
    .locals 1
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I

    return v0
.end method

.method static synthetic access$502(Landroid/hardware/motion/MotionRecognitionFlipCover;I)I
    .locals 0
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;
    .param p1    # I

    iput p1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I

    return p1
.end method

.method static synthetic access$600(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z
    .locals 1
    .param p0    # Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mIsLightSensorExist:Z

    return v0
.end method


# virtual methods
.method public disableFlipCover()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    :cond_0
    return-void
.end method

.method public enableFlipCover()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover;->mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    :cond_0
    return-void
.end method
