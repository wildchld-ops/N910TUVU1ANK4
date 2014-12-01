.class final enum Lcom/android/phone/CFStatus;
.super Ljava/lang/Enum;
.source "CallForwardAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CFStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CFStatus;

.field public static final enum NUM_NOT_SET:Lcom/android/phone/CFStatus;

.field public static final enum OFF:Lcom/android/phone/CFStatus;

.field public static final enum ON:Lcom/android/phone/CFStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/CFStatus;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CFStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    new-instance v0, Lcom/android/phone/CFStatus;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CFStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    new-instance v0, Lcom/android/phone/CFStatus;

    const-string v1, "NUM_NOT_SET"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CFStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CFStatus;->$VALUES:[Lcom/android/phone/CFStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CFStatus;
    .locals 1

    const-class v0, Lcom/android/phone/CFStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CFStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CFStatus;
    .locals 1

    sget-object v0, Lcom/android/phone/CFStatus;->$VALUES:[Lcom/android/phone/CFStatus;

    invoke-virtual {v0}, [Lcom/android/phone/CFStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CFStatus;

    return-object v0
.end method
