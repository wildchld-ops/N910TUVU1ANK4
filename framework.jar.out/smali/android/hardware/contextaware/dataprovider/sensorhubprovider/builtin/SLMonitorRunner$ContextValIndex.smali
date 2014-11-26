.class final enum Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
.super Ljava/lang/Enum;
.source "SLMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextValIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum ActiveTime:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum Calorie:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum DataBundle:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum DataCount:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum DataType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum Distance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum Duration:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum StepCount:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum StepType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

.field public static final enum Timestamp:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "DataType"

    invoke-direct {v0, v1, v4, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "Timestamp"

    invoke-direct {v0, v1, v5, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "DataCount"

    invoke-direct {v0, v1, v6, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "DataBundle"

    invoke-direct {v0, v1, v7, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "StepType"

    invoke-direct {v0, v1, v8, v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "StepCount"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "Distance"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "Calorie"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "Duration"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const-string v1, "ActiveTime"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->ActiveTime:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->ActiveTime:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I
    .locals 1
    .param p0    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    return-object v0
.end method
