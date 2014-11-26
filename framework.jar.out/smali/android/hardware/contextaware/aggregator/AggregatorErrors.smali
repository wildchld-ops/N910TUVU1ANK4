.class public final enum Landroid/hardware/contextaware/aggregator/AggregatorErrors;
.super Ljava/lang/Enum;
.source "AggregatorErrors.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/aggregator/AggregatorErrors;",
        ">;",
        "Landroid/hardware/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_ARRIVING_ON_STATUS_FAULT:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_SUB_COLLECTOR_FALSE:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UNKNOWN:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

.field public static final enum ERROR_UPDATED_CONTEXT_TYPE_FAULT:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

.field public static final enum SUCCESS:Landroid/hardware/contextaware/aggregator/AggregatorErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    const-string v1, "SUCCESS"

    const-string v2, "Success"

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->SUCCESS:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UNKNOWN"

    const-string v2, "ERROR : Unknown"

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_UNKNOWN:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_ARRIVING_ON_STATUS_FAULT"

    const-string v2, "ERROR : Status of arriving on POI is fault"

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_ARRIVING_ON_STATUS_FAULT:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UPDATED_CONTEXT_TYPE_FAULT"

    const-string v2, "ERROR : Updated context type is fault"

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_UPDATED_CONTEXT_NULL_EXCEPTION"

    const-string v2, "ERROR : Updated context is null"

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_SUB_COLLECTOR_FALSE"

    const/4 v2, 0x5

    const-string v3, "ERROR : Sub collector is false"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_FALSE:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    new-instance v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    const-string v1, "ERROR_SUB_COLLECTOR_NULL_EXCEPTION"

    const/4 v2, 0x6

    const-string v3, "ERROR : Sub collector is null"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    sget-object v1, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->SUCCESS:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_UNKNOWN:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_ARRIVING_ON_STATUS_FAULT:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_FALSE:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->$VALUES:[Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6
    .param p0    # I

    const-string v4, ""

    invoke-static {}, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->values()[Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_2

    iget-object v4, v1, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Message code is fault"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-object v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/aggregator/AggregatorErrors;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/aggregator/AggregatorErrors;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->$VALUES:[Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/aggregator/AggregatorErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/AggregatorErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    return-void
.end method
