.class public final enum Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;
.super Ljava/lang/Enum;
.source "CallerInfoCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Icon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

.field public static final enum ACTIVITY:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

.field public static final enum AUTHENTICATOR:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

.field public static final enum PACKAGE:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

.field public static final enum RESOURCE:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->ACTIVITY:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    const-string v1, "AUTHENTICATOR"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->AUTHENTICATOR:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    const-string v1, "PACKAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->PACKAGE:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    const-string v1, "RESOURCE"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->RESOURCE:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    sget-object v1, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->ACTIVITY:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->AUTHENTICATOR:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->PACKAGE:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->RESOURCE:Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->$VALUES:[Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;
    .locals 1

    const-class v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;
    .locals 1

    sget-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;->$VALUES:[Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Icon;

    return-object v0
.end method
