.class public final enum Lcom/android/systemui/PhoneSettingService$SettingMode;
.super Ljava/lang/Enum;
.source "PhoneSettingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/PhoneSettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/PhoneSettingService$SettingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum AirplaneMode:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum AllShareCast:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum AutoRotate:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Bluetooth:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Dormant:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum DrivingMode:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Location:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum MobileData:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum MultiWindow:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Nfc:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum PowerSaving:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum SBeam:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Silent:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum SmartStay:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Sync:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum WiFiHotspot:Lcom/android/systemui/PhoneSettingService$SettingMode;

.field public static final enum Wifi:Lcom/android/systemui/PhoneSettingService$SettingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Silent"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Silent:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Location"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Location:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Wifi"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Wifi:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "AutoRotate"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->AutoRotate:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "PowerSaving"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->PowerSaving:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Dormant"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Dormant:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "MobileData"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->MobileData:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Bluetooth"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Bluetooth:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "AllShareCast"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->AllShareCast:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "MultiWindow"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->MultiWindow:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "SBeam"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->SBeam:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Nfc"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Nfc:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "DrivingMode"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->DrivingMode:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "SmartStay"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->SmartStay:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "Sync"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->Sync:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "AirplaneMode"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->AirplaneMode:Lcom/android/systemui/PhoneSettingService$SettingMode;

    new-instance v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    const-string v1, "WiFiHotspot"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/PhoneSettingService$SettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->WiFiHotspot:Lcom/android/systemui/PhoneSettingService$SettingMode;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/systemui/PhoneSettingService$SettingMode;

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->Silent:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->Location:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->Wifi:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->AutoRotate:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/PhoneSettingService$SettingMode;->PowerSaving:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->Dormant:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->MobileData:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->Bluetooth:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->AllShareCast:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->MultiWindow:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->SBeam:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->Nfc:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->DrivingMode:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->SmartStay:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->Sync:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->AirplaneMode:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/systemui/PhoneSettingService$SettingMode;->WiFiHotspot:Lcom/android/systemui/PhoneSettingService$SettingMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->$VALUES:[Lcom/android/systemui/PhoneSettingService$SettingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/PhoneSettingService$SettingMode;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/PhoneSettingService$SettingMode;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/PhoneSettingService$SettingMode;
    .locals 1

    sget-object v0, Lcom/android/systemui/PhoneSettingService$SettingMode;->$VALUES:[Lcom/android/systemui/PhoneSettingService$SettingMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/PhoneSettingService$SettingMode;

    return-object v0
.end method
