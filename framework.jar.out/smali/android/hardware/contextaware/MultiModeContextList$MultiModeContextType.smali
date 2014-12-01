.class public enum Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
.super Ljava/lang/Enum;
.source "MultiModeContextList.java"

# interfaces
.implements Landroid/hardware/contextaware/IParserHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/MultiModeContextList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "MultiModeContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;",
        ">;",
        "Landroid/hardware/contextaware/IParserHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_ACTIVITY_TRACKER:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

.field public static final enum SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType$1;

    const-string v1, "SENSORHUB_RUNNER_ACTIVITY_TRACKER"

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    new-instance v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType$2;

    const-string v1, "SENSORHUB_RUNNER_STEP_LEVEL_MONITOR"

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_STEP_LEVEL_MONITOR:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    sget-object v1, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->SENSORHUB_RUNNER_STEP_LEVEL_MONITOR:Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->$VALUES:[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/MultiModeContextList$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    .locals 1

    const-class v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->$VALUES:[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getParserHandler()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
