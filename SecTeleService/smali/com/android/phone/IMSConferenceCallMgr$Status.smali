.class public final enum Lcom/android/phone/IMSConferenceCallMgr$Status;
.super Ljava/lang/Enum;
.source "IMSConferenceCallMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/IMSConferenceCallMgr$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/IMSConferenceCallMgr$Status;

.field public static final enum CONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

.field public static final enum CONNECTING:Lcom/android/phone/IMSConferenceCallMgr$Status;

.field public static final enum DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

.field public static final enum FAILED:Lcom/android/phone/IMSConferenceCallMgr$Status;

.field public static final enum IDLE:Lcom/android/phone/IMSConferenceCallMgr$Status;

.field public static final enum WAITING:Lcom/android/phone/IMSConferenceCallMgr$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Status;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/IMSConferenceCallMgr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$Status;

    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Status;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/IMSConferenceCallMgr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->WAITING:Lcom/android/phone/IMSConferenceCallMgr$Status;

    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Status;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/IMSConferenceCallMgr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->CONNECTING:Lcom/android/phone/IMSConferenceCallMgr$Status;

    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Status;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/IMSConferenceCallMgr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->CONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Status;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/IMSConferenceCallMgr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/IMSConferenceCallMgr$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->FAILED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/phone/IMSConferenceCallMgr$Status;

    sget-object v1, Lcom/android/phone/IMSConferenceCallMgr$Status;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/IMSConferenceCallMgr$Status;->WAITING:Lcom/android/phone/IMSConferenceCallMgr$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/IMSConferenceCallMgr$Status;->CONNECTING:Lcom/android/phone/IMSConferenceCallMgr$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/IMSConferenceCallMgr$Status;->CONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/IMSConferenceCallMgr$Status;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr$Status;->FAILED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->$VALUES:[Lcom/android/phone/IMSConferenceCallMgr$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Status;
    .locals 1

    const-class v0, Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IMSConferenceCallMgr$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/IMSConferenceCallMgr$Status;
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->$VALUES:[Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v0}, [Lcom/android/phone/IMSConferenceCallMgr$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/IMSConferenceCallMgr$Status;

    return-object v0
.end method


# virtual methods
.method public isCONNECTED()Z
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->CONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCONNECTING()Z
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->CONNECTING:Lcom/android/phone/IMSConferenceCallMgr$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDISCONNECTED()Z
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFAILED()Z
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->FAILED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIDLE()Z
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWAITING()Z
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->WAITING:Lcom/android/phone/IMSConferenceCallMgr$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
