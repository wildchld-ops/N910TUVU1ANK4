.class public final enum Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;
.super Ljava/lang/Enum;
.source "MotionRecognitionSmartFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionSmartFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eREASONOFSTARTSTOP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

.field public static final enum CAMERA_MOTION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

.field public static final enum DOCKINGSTATION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

.field public static final enum END:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

.field public static final enum MOTION_STARTSTOP:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

.field public static final enum REGISTER_LISTENER:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

.field public static final enum SETTING:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;


# instance fields
.field private final seq:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    const-string v1, "DOCKINGSTATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->DOCKINGSTATION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    const-string v1, "MOTION_STARTSTOP"

    invoke-direct {v0, v1, v3, v4}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->MOTION_STARTSTOP:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    const-string v1, "SETTING"

    invoke-direct {v0, v1, v4, v5}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->SETTING:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    const-string v1, "REGISTER_LISTENER"

    invoke-direct {v0, v1, v5, v6}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->REGISTER_LISTENER:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    const-string v1, "CAMERA_MOTION"

    invoke-direct {v0, v1, v6, v7}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->CAMERA_MOTION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    new-instance v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    const-string v1, "END"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->END:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->DOCKINGSTATION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    aput-object v2, v0, v1

    sget-object v1, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->MOTION_STARTSTOP:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->SETTING:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->REGISTER_LISTENER:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->CAMERA_MOTION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->END:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    aput-object v1, v0, v7

    sput-object v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->$VALUES:[Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->seq:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;
    .locals 1

    const-class v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    return-object v0
.end method

.method public static values()[Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;
    .locals 1

    sget-object v0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->$VALUES:[Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    return-object v0
.end method


# virtual methods
.method public getSequence()I
    .locals 1

    iget v0, p0, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->seq:I

    return v0
.end method
