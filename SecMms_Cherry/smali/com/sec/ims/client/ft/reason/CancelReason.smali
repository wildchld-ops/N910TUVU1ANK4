.class public final enum Lcom/sec/ims/client/ft/reason/CancelReason;
.super Ljava/lang/Enum;
.source "CancelReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/client/ft/reason/CancelReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED_BY_LOCAL:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum CANCELED_BY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum CANCELED_BY_SYSTEM:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum CONTENT_REACHED_DOWNSIZE:Lcom/sec/ims/client/ft/reason/CancelReason;

.field private static final synthetic ENUM$VALUES:[Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum ERROR:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum FILE_DOESNT_EXIST:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum INVALID_REQUEST:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum LOCALLY_ABORTED:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum LOW_MEMORY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum NOT_AUTHORIZED:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum NO_RESPONSE:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum REJECTED_BY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum REMOTE_BLOCKED:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum REMOTE_USER_INVALID:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum TIME_OUT:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum TOO_LARGE_NOT_LOCAL:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum UNKNOWN:Lcom/sec/ims/client/ft/reason/CancelReason;

.field public static final enum VALIDITY_EXPIRED:Lcom/sec/ims/client/ft/reason/CancelReason;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->UNKNOWN:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "CANCELED_BY_LOCAL"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->CANCELED_BY_LOCAL:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "CANCELED_BY_REMOTE"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "CANCELED_BY_SYSTEM"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "REJECTED_BY_REMOTE"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "TIME_OUT"

    const/4 v2, 0x5

    const/16 v3, 0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->TIME_OUT:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "LOW_MEMORY_REMOTE"

    const/4 v2, 0x6

    const/16 v3, 0x6a

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->LOW_MEMORY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "TOO_LARGE_NOT_LOCAL"

    const/4 v2, 0x7

    const/16 v3, 0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->TOO_LARGE_NOT_LOCAL:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "NOT_AUTHORIZED"

    const/16 v2, 0x8

    const/16 v3, 0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->NOT_AUTHORIZED:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "REMOTE_BLOCKED"

    const/16 v2, 0x9

    const/16 v3, 0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->REMOTE_BLOCKED:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "ERROR"

    const/16 v2, 0xa

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->ERROR:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "FILE_DOESNT_EXIST"

    const/16 v2, 0xb

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->FILE_DOESNT_EXIST:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "LOCALLY_ABORTED"

    const/16 v2, 0xc

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->LOCALLY_ABORTED:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "VALIDITY_EXPIRED"

    const/16 v2, 0xd

    const/16 v3, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->VALIDITY_EXPIRED:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "REMOTE_TEMPORARILY_UNAVAILABLE"

    const/16 v2, 0xe

    const/16 v3, 0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "REMOTE_USER_INVALID"

    const/16 v2, 0xf

    const/16 v3, 0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->REMOTE_USER_INVALID:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "INVALID_REQUEST"

    const/16 v2, 0x10

    const/16 v3, 0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->INVALID_REQUEST:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "FORBIDDEN_NO_RETRY_FALLBACK"

    const/16 v2, 0x11

    const/16 v3, 0x75

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "CONTENT_REACHED_DOWNSIZE"

    const/16 v2, 0x12

    const/16 v3, 0x76

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/ims/client/ft/reason/CancelReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    const-string v1, "NO_RESPONSE"

    const/16 v2, 0x13

    const/16 v3, 0x77

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/client/ft/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->NO_RESPONSE:Lcom/sec/ims/client/ft/reason/CancelReason;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/sec/ims/client/ft/reason/CancelReason;

    sget-object v1, Lcom/sec/ims/client/ft/reason/CancelReason;->UNKNOWN:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/client/ft/reason/CancelReason;->CANCELED_BY_LOCAL:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/client/ft/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/client/ft/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/ims/client/ft/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->TIME_OUT:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->LOW_MEMORY_REMOTE:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->TOO_LARGE_NOT_LOCAL:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->NOT_AUTHORIZED:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->REMOTE_BLOCKED:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->ERROR:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->FILE_DOESNT_EXIST:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->LOCALLY_ABORTED:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->VALIDITY_EXPIRED:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->REMOTE_USER_INVALID:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->INVALID_REQUEST:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sec/ims/client/ft/reason/CancelReason;->NO_RESPONSE:Lcom/sec/ims/client/ft/reason/CancelReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->ENUM$VALUES:[Lcom/sec/ims/client/ft/reason/CancelReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/ims/client/ft/reason/CancelReason;->mId:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/ims/client/ft/reason/CancelReason;
    .locals 4
    .param p0    # I

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/ims/client/ft/reason/CancelReason;->values()[Lcom/sec/ims/client/ft/reason/CancelReason;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/client/ft/reason/CancelReason;

    iget v3, v1, Lcom/sec/ims/client/ft/reason/CancelReason;->mId:I

    if-ne v3, p0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/client/ft/reason/CancelReason;
    .locals 1

    const-class v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/ft/reason/CancelReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/client/ft/reason/CancelReason;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/ims/client/ft/reason/CancelReason;->ENUM$VALUES:[Lcom/sec/ims/client/ft/reason/CancelReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/ims/client/ft/reason/CancelReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/client/ft/reason/CancelReason;->mId:I

    return v0
.end method
