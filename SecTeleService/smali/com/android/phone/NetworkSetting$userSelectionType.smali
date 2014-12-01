.class final enum Lcom/android/phone/NetworkSetting$userSelectionType;
.super Ljava/lang/Enum;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "userSelectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/NetworkSetting$userSelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/NetworkSetting$userSelectionType;

.field public static final enum AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

.field public static final enum SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

.field public static final enum SELECTLIST:Lcom/android/phone/NetworkSetting$userSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/NetworkSetting$userSelectionType;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NetworkSetting$userSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    new-instance v0, Lcom/android/phone/NetworkSetting$userSelectionType;

    const-string v1, "AUTOSELECT"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/NetworkSetting$userSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    new-instance v0, Lcom/android/phone/NetworkSetting$userSelectionType;

    const-string v1, "SELECTLIST"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/NetworkSetting$userSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->SELECTLIST:Lcom/android/phone/NetworkSetting$userSelectionType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/NetworkSetting$userSelectionType;

    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/NetworkSetting$userSelectionType;->SELECTLIST:Lcom/android/phone/NetworkSetting$userSelectionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->$VALUES:[Lcom/android/phone/NetworkSetting$userSelectionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/NetworkSetting$userSelectionType;
    .locals 1

    const-class v0, Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/NetworkSetting$userSelectionType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/NetworkSetting$userSelectionType;
    .locals 1

    sget-object v0, Lcom/android/phone/NetworkSetting$userSelectionType;->$VALUES:[Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-virtual {v0}, [Lcom/android/phone/NetworkSetting$userSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/NetworkSetting$userSelectionType;

    return-object v0
.end method
