.class public final enum Landroid/webkitsec/ConsoleMessage$MessageLevel;
.super Ljava/lang/Enum;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ConsoleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkitsec/ConsoleMessage$MessageLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkitsec/ConsoleMessage$MessageLevel;

.field public static final enum DEBUG:Landroid/webkitsec/ConsoleMessage$MessageLevel;

.field public static final enum ERROR:Landroid/webkitsec/ConsoleMessage$MessageLevel;

.field public static final enum LOG:Landroid/webkitsec/ConsoleMessage$MessageLevel;

.field public static final enum TIP:Landroid/webkitsec/ConsoleMessage$MessageLevel;

.field public static final enum WARNING:Landroid/webkitsec/ConsoleMessage$MessageLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;

    const-string v1, "TIP"

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;->TIP:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    new-instance v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v3}, Landroid/webkitsec/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;->LOG:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    new-instance v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Landroid/webkitsec/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    new-instance v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Landroid/webkitsec/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    new-instance v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v6}, Landroid/webkitsec/ConsoleMessage$MessageLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/webkitsec/ConsoleMessage$MessageLevel;

    sget-object v1, Landroid/webkitsec/ConsoleMessage$MessageLevel;->TIP:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkitsec/ConsoleMessage$MessageLevel;->LOG:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkitsec/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    aput-object v1, v0, v4

    sget-object v1, Landroid/webkitsec/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    aput-object v1, v0, v5

    sget-object v1, Landroid/webkitsec/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkitsec/ConsoleMessage$MessageLevel;

    aput-object v1, v0, v6

    sput-object v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;->$VALUES:[Landroid/webkitsec/ConsoleMessage$MessageLevel;

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

.method public static valueOf(Ljava/lang/String;)Landroid/webkitsec/ConsoleMessage$MessageLevel;
    .locals 1

    const-class v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;

    return-object v0
.end method

.method public static values()[Landroid/webkitsec/ConsoleMessage$MessageLevel;
    .locals 1

    sget-object v0, Landroid/webkitsec/ConsoleMessage$MessageLevel;->$VALUES:[Landroid/webkitsec/ConsoleMessage$MessageLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkitsec/ConsoleMessage$MessageLevel;

    return-object v0
.end method
