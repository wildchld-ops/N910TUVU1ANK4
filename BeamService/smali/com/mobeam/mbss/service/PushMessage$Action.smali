.class public final enum Lcom/mobeam/mbss/service/PushMessage$Action;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/mobeam/mbss/service/PushMessage$Action;

.field public static final enum INVALIDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;

.field public static final enum PULL_MSGS:Lcom/mobeam/mbss/service/PushMessage$Action;

.field public static final enum REQ_BEAM_REPORT:Lcom/mobeam/mbss/service/PushMessage$Action;

.field public static final enum UPDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mobeam/mbss/service/PushMessage$Action;

    const-string v1, "UPDATE_LICENSE"

    invoke-direct {v0, v1, v2}, Lcom/mobeam/mbss/service/PushMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/mbss/service/PushMessage$Action;->UPDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;

    new-instance v0, Lcom/mobeam/mbss/service/PushMessage$Action;

    const-string v1, "INVALIDATE_LICENSE"

    invoke-direct {v0, v1, v3}, Lcom/mobeam/mbss/service/PushMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/mbss/service/PushMessage$Action;->INVALIDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;

    new-instance v0, Lcom/mobeam/mbss/service/PushMessage$Action;

    const-string v1, "REQ_BEAM_REPORT"

    invoke-direct {v0, v1, v4}, Lcom/mobeam/mbss/service/PushMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/mbss/service/PushMessage$Action;->REQ_BEAM_REPORT:Lcom/mobeam/mbss/service/PushMessage$Action;

    new-instance v0, Lcom/mobeam/mbss/service/PushMessage$Action;

    const-string v1, "PULL_MSGS"

    invoke-direct {v0, v1, v5}, Lcom/mobeam/mbss/service/PushMessage$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobeam/mbss/service/PushMessage$Action;->PULL_MSGS:Lcom/mobeam/mbss/service/PushMessage$Action;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mobeam/mbss/service/PushMessage$Action;

    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->UPDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->INVALIDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->REQ_BEAM_REPORT:Lcom/mobeam/mbss/service/PushMessage$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->PULL_MSGS:Lcom/mobeam/mbss/service/PushMessage$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mobeam/mbss/service/PushMessage$Action;->ENUM$VALUES:[Lcom/mobeam/mbss/service/PushMessage$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobeam/mbss/service/PushMessage$Action;
    .locals 1

    const-class v0, Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobeam/mbss/service/PushMessage$Action;

    return-object v0
.end method

.method public static values()[Lcom/mobeam/mbss/service/PushMessage$Action;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mobeam/mbss/service/PushMessage$Action;->ENUM$VALUES:[Lcom/mobeam/mbss/service/PushMessage$Action;

    array-length v1, v0

    new-array v2, v1, [Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
