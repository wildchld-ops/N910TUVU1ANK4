.class public final enum Lcom/sec/ims/client/ft/reason/RejectReason;
.super Ljava/lang/Enum;
.source "RejectReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/client/ft/reason/RejectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/ims/client/ft/reason/RejectReason;

.field public static final enum REJECTED_BY_LOCAL_CHOICE:Lcom/sec/ims/client/ft/reason/RejectReason;

.field public static final enum REJECTED_CORRUPTED_INVITATION_PARAMETERS:Lcom/sec/ims/client/ft/reason/RejectReason;

.field public static final enum REJECTED_INTERNAL_ERROR:Lcom/sec/ims/client/ft/reason/RejectReason;

.field public static final enum REJECTED_MAX_SIZE_EXCEEDED:Lcom/sec/ims/client/ft/reason/RejectReason;

.field public static final enum REJECTED_NO_AVAILABLE_DISK_SPACE:Lcom/sec/ims/client/ft/reason/RejectReason;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/client/ft/reason/RejectReason;

    const-string v1, "REJECTED_MAX_SIZE_EXCEEDED"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/client/ft/reason/RejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_MAX_SIZE_EXCEEDED:Lcom/sec/ims/client/ft/reason/RejectReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/RejectReason;

    const-string v1, "REJECTED_NO_AVAILABLE_DISK_SPACE"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/client/ft/reason/RejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_NO_AVAILABLE_DISK_SPACE:Lcom/sec/ims/client/ft/reason/RejectReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/RejectReason;

    const-string v1, "REJECTED_BY_LOCAL_CHOICE"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/ims/client/ft/reason/RejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_BY_LOCAL_CHOICE:Lcom/sec/ims/client/ft/reason/RejectReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/RejectReason;

    const-string v1, "REJECTED_CORRUPTED_INVITATION_PARAMETERS"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/ims/client/ft/reason/RejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_CORRUPTED_INVITATION_PARAMETERS:Lcom/sec/ims/client/ft/reason/RejectReason;

    new-instance v0, Lcom/sec/ims/client/ft/reason/RejectReason;

    const-string v1, "REJECTED_INTERNAL_ERROR"

    const/16 v2, 0xcc

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/ims/client/ft/reason/RejectReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_INTERNAL_ERROR:Lcom/sec/ims/client/ft/reason/RejectReason;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/ims/client/ft/reason/RejectReason;

    sget-object v1, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_MAX_SIZE_EXCEEDED:Lcom/sec/ims/client/ft/reason/RejectReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_NO_AVAILABLE_DISK_SPACE:Lcom/sec/ims/client/ft/reason/RejectReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_BY_LOCAL_CHOICE:Lcom/sec/ims/client/ft/reason/RejectReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_CORRUPTED_INVITATION_PARAMETERS:Lcom/sec/ims/client/ft/reason/RejectReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/client/ft/reason/RejectReason;->REJECTED_INTERNAL_ERROR:Lcom/sec/ims/client/ft/reason/RejectReason;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/ims/client/ft/reason/RejectReason;->ENUM$VALUES:[Lcom/sec/ims/client/ft/reason/RejectReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/ims/client/ft/reason/RejectReason;->mId:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/ims/client/ft/reason/RejectReason;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/ims/client/ft/reason/RejectReason;->values()[Lcom/sec/ims/client/ft/reason/RejectReason;

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
    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/ft/reason/RejectReason;

    iget v3, v0, Lcom/sec/ims/client/ft/reason/RejectReason;->mId:I

    if-ne v3, p0, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/client/ft/reason/RejectReason;
    .locals 1

    const-class v0, Lcom/sec/ims/client/ft/reason/RejectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/client/ft/reason/RejectReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/client/ft/reason/RejectReason;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/ims/client/ft/reason/RejectReason;->ENUM$VALUES:[Lcom/sec/ims/client/ft/reason/RejectReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/ims/client/ft/reason/RejectReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/client/ft/reason/RejectReason;->mId:I

    return v0
.end method
