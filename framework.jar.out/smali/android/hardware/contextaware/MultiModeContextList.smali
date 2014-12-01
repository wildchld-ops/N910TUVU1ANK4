.class public Landroid/hardware/contextaware/MultiModeContextList;
.super Ljava/lang/Object;
.source "MultiModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/MultiModeContextList$1;,
        Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/MultiModeContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/MultiModeContextList;
    .locals 2

    sget-object v0, Landroid/hardware/contextaware/MultiModeContextList;->instance:Landroid/hardware/contextaware/MultiModeContextList;

    if-nez v0, :cond_1

    const-class v1, Landroid/hardware/contextaware/MultiModeContextList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/MultiModeContextList;->instance:Landroid/hardware/contextaware/MultiModeContextList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/contextaware/MultiModeContextList;

    invoke-direct {v0}, Landroid/hardware/contextaware/MultiModeContextList;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/MultiModeContextList;->instance:Landroid/hardware/contextaware/MultiModeContextList;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/hardware/contextaware/MultiModeContextList;->instance:Landroid/hardware/contextaware/MultiModeContextList;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getServiceCode(I)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    invoke-static {}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v2}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v5

    invoke-static {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final isIncluded(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isMultiModeType(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->values()[Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    # getter for: Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;->access$100(Landroid/hardware/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
