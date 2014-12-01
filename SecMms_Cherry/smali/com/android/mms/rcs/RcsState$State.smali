.class public final enum Lcom/android/mms/rcs/RcsState$State;
.super Ljava/lang/Enum;
.source "RcsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/rcs/RcsState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/rcs/RcsState$State;

.field public static final enum ACTIVATED:Lcom/android/mms/rcs/RcsState$State;

.field public static final enum DEACTIVATED:Lcom/android/mms/rcs/RcsState$State;

.field public static final enum NOT_INITIALIZED:Lcom/android/mms/rcs/RcsState$State;

.field public static final enum PERMANENT_DISABLED:Lcom/android/mms/rcs/RcsState$State;

.field public static final enum PERMANENT_IN_PROGRESS:Lcom/android/mms/rcs/RcsState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/mms/rcs/RcsState$State;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/rcs/RcsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/RcsState$State;->NOT_INITIALIZED:Lcom/android/mms/rcs/RcsState$State;

    new-instance v0, Lcom/android/mms/rcs/RcsState$State;

    const-string v1, "DEACTIVATED"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/rcs/RcsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/RcsState$State;->DEACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    new-instance v0, Lcom/android/mms/rcs/RcsState$State;

    const-string v1, "ACTIVATED"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/rcs/RcsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/RcsState$State;->ACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    new-instance v0, Lcom/android/mms/rcs/RcsState$State;

    const-string v1, "PERMANENT_DISABLED"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/rcs/RcsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/RcsState$State;->PERMANENT_DISABLED:Lcom/android/mms/rcs/RcsState$State;

    new-instance v0, Lcom/android/mms/rcs/RcsState$State;

    const-string v1, "PERMANENT_IN_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/rcs/RcsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/rcs/RcsState$State;->PERMANENT_IN_PROGRESS:Lcom/android/mms/rcs/RcsState$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/rcs/RcsState$State;

    sget-object v1, Lcom/android/mms/rcs/RcsState$State;->NOT_INITIALIZED:Lcom/android/mms/rcs/RcsState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/rcs/RcsState$State;->DEACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/rcs/RcsState$State;->ACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/rcs/RcsState$State;->PERMANENT_DISABLED:Lcom/android/mms/rcs/RcsState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/rcs/RcsState$State;->PERMANENT_IN_PROGRESS:Lcom/android/mms/rcs/RcsState$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/rcs/RcsState$State;->$VALUES:[Lcom/android/mms/rcs/RcsState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/rcs/RcsState$State;
    .locals 1

    const-class v0, Lcom/android/mms/rcs/RcsState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/rcs/RcsState$State;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/rcs/RcsState$State;
    .locals 1

    sget-object v0, Lcom/android/mms/rcs/RcsState$State;->$VALUES:[Lcom/android/mms/rcs/RcsState$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/rcs/RcsState$State;

    return-object v0
.end method
