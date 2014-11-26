.class public final enum Landroid/webkitsec/WebSettings$NotificationState;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkitsec/WebSettings$NotificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkitsec/WebSettings$NotificationState;

.field public static final enum OFF:Landroid/webkitsec/WebSettings$NotificationState;

.field public static final enum ON:Landroid/webkitsec/WebSettings$NotificationState;

.field public static final enum ON_DEMAND:Landroid/webkitsec/WebSettings$NotificationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/webkitsec/WebSettings$NotificationState;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebSettings$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$NotificationState;->ON:Landroid/webkitsec/WebSettings$NotificationState;

    new-instance v0, Landroid/webkitsec/WebSettings$NotificationState;

    const-string v1, "ON_DEMAND"

    invoke-direct {v0, v1, v3}, Landroid/webkitsec/WebSettings$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$NotificationState;->ON_DEMAND:Landroid/webkitsec/WebSettings$NotificationState;

    new-instance v0, Landroid/webkitsec/WebSettings$NotificationState;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Landroid/webkitsec/WebSettings$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$NotificationState;->OFF:Landroid/webkitsec/WebSettings$NotificationState;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkitsec/WebSettings$NotificationState;

    sget-object v1, Landroid/webkitsec/WebSettings$NotificationState;->ON:Landroid/webkitsec/WebSettings$NotificationState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkitsec/WebSettings$NotificationState;->ON_DEMAND:Landroid/webkitsec/WebSettings$NotificationState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkitsec/WebSettings$NotificationState;->OFF:Landroid/webkitsec/WebSettings$NotificationState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/webkitsec/WebSettings$NotificationState;->$VALUES:[Landroid/webkitsec/WebSettings$NotificationState;

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

.method public static valueOf(Ljava/lang/String;)Landroid/webkitsec/WebSettings$NotificationState;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/webkitsec/WebSettings$NotificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebSettings$NotificationState;

    return-object v0
.end method

.method public static values()[Landroid/webkitsec/WebSettings$NotificationState;
    .locals 1

    sget-object v0, Landroid/webkitsec/WebSettings$NotificationState;->$VALUES:[Landroid/webkitsec/WebSettings$NotificationState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkitsec/WebSettings$NotificationState;

    return-object v0
.end method
