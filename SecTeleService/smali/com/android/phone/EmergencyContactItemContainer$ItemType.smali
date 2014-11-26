.class public final enum Lcom/android/phone/EmergencyContactItemContainer$ItemType;
.super Ljava/lang/Enum;
.source "EmergencyContactItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyContactItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/EmergencyContactItemContainer$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/EmergencyContactItemContainer$ItemType;

.field public static final enum EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

.field public static final enum EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    const-string v1, "EMERGENCY_SERVICE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    new-instance v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    const-string v1, "EMERGENCY_CONTACT"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->$VALUES:[Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/EmergencyContactItemContainer$ItemType;
    .locals 1

    const-class v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/EmergencyContactItemContainer$ItemType;
    .locals 1

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->$VALUES:[Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->id:I

    return v0
.end method
