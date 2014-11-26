.class public final enum Lcom/sec/ims/client/notification/RcsDependencyType;
.super Ljava/lang/Enum;
.source "RcsDependencyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/client/notification/RcsDependencyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLED_WHEN_EMPTY:Lcom/sec/ims/client/notification/RcsDependencyType;

.field private static final synthetic ENUM$VALUES:[Lcom/sec/ims/client/notification/RcsDependencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/ims/client/notification/RcsDependencyType;

    const-string v1, "DISABLED_WHEN_EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/client/notification/RcsDependencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/client/notification/RcsDependencyType;->DISABLED_WHEN_EMPTY:Lcom/sec/ims/client/notification/RcsDependencyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/ims/client/notification/RcsDependencyType;

    sget-object v1, Lcom/sec/ims/client/notification/RcsDependencyType;->DISABLED_WHEN_EMPTY:Lcom/sec/ims/client/notification/RcsDependencyType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/client/notification/RcsDependencyType;->ENUM$VALUES:[Lcom/sec/ims/client/notification/RcsDependencyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/client/notification/RcsDependencyType;
    .locals 1

    const-class v0, Lcom/sec/ims/client/notification/RcsDependencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/notification/RcsDependencyType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/client/notification/RcsDependencyType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/ims/client/notification/RcsDependencyType;->ENUM$VALUES:[Lcom/sec/ims/client/notification/RcsDependencyType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/ims/client/notification/RcsDependencyType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
