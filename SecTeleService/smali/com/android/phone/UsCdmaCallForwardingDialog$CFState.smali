.class final enum Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;
.super Ljava/lang/Enum;
.source "UsCdmaCallForwardingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsCdmaCallForwardingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CFState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

.field public static final enum DEACTIVATE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

.field public static final enum DISPLAY_GUIDE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

.field public static final enum IDLE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

.field public static final enum NEED_NUMBER_FIX:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

.field public static final enum ROAMING:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->IDLE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    new-instance v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    const-string v1, "ROAMING"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ROAMING:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    new-instance v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    const-string v1, "NEED_NUMBER_FIX"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->NEED_NUMBER_FIX:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    new-instance v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    const-string v1, "DISPLAY_GUIDE"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->DISPLAY_GUIDE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    new-instance v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    const-string v1, "DEACTIVATE"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->DEACTIVATE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->IDLE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->ROAMING:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->NEED_NUMBER_FIX:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->DISPLAY_GUIDE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->DEACTIVATE:Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->$VALUES:[Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;
    .locals 1

    const-class v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;
    .locals 1

    sget-object v0, Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->$VALUES:[Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    invoke-virtual {v0}, [Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/UsCdmaCallForwardingDialog$CFState;

    return-object v0
.end method
