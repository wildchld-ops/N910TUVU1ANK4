.class final enum Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
.super Ljava/lang/Enum;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EDSRecievedIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStart2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStart3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStop2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_AlarmStop3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_CameraStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_FrontCamera:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_HDMI:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_RVF:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_RearCamera:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ScreenLocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ScreenRecorder:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ScreenRecorder2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_ScreenUnlocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_SideSync:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_SideSyncDC:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_SmartDock:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

.field public static final enum EDS_INTENT_WFD:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_HDMI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_HDMI:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_RearCamera"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RearCamera:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_FrontCamera"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_FrontCamera:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_CameraStop"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_RVF"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RVF:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_WFD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_WFD:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStart"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStart2"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStart3"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStop"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStop2"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_AlarmStop3"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_SideSync"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSync:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_SideSyncDC"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSyncDC:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ScreenRecorder"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ScreenRecorder2"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_SmartDock"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SmartDock:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ScreenLocked"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenLocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const-string v1, "EDS_INTENT_ScreenUnlocked"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenUnlocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_HDMI:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RearCamera:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_FrontCamera:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RVF:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_WFD:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSync:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSyncDC:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SmartDock:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenLocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenUnlocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->$VALUES:[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->value:I

    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->values()[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_1

    move-object v3, v4

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
    .locals 1

    const-class v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
    .locals 1

    sget-object v0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->$VALUES:[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->value:I

    return v0
.end method
