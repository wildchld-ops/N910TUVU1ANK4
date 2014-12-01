.class public final enum Landroid/os/PersonaManager$AppType;
.super Ljava/lang/Enum;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/PersonaManager$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/PersonaManager$AppType;

.field public static final enum DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

.field public static final enum IME:Landroid/os/PersonaManager$AppType;

.field public static final enum INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/os/PersonaManager$AppType;

    const-string v1, "IME"

    const-string v2, "TYPE_IME"

    invoke-direct {v0, v1, v3, v2}, Landroid/os/PersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    new-instance v0, Landroid/os/PersonaManager$AppType;

    const-string v1, "INSTALLER_WHITELIST"

    const-string v2, "installerWhitelist"

    invoke-direct {v0, v1, v4, v2}, Landroid/os/PersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    new-instance v0, Landroid/os/PersonaManager$AppType;

    const-string v1, "DISABLED_LAUNCHERS"

    const-string v2, "disabledLaunchers"

    invoke-direct {v0, v1, v5, v2}, Landroid/os/PersonaManager$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/PersonaManager$AppType;->DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/PersonaManager$AppType;

    sget-object v1, Landroid/os/PersonaManager$AppType;->IME:Landroid/os/PersonaManager$AppType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/PersonaManager$AppType;->INSTALLER_WHITELIST:Landroid/os/PersonaManager$AppType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/PersonaManager$AppType;->DISABLED_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/os/PersonaManager$AppType;->$VALUES:[Landroid/os/PersonaManager$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/os/PersonaManager$AppType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/PersonaManager$AppType;
    .locals 1

    const-class v0, Landroid/os/PersonaManager$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager$AppType;

    return-object v0
.end method

.method public static values()[Landroid/os/PersonaManager$AppType;
    .locals 1

    sget-object v0, Landroid/os/PersonaManager$AppType;->$VALUES:[Landroid/os/PersonaManager$AppType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PersonaManager$AppType;

    return-object v0
.end method


# virtual methods
.method public fromName(Ljava/lang/String;)Landroid/os/PersonaManager$AppType;
    .locals 5

    invoke-static {}, Landroid/os/PersonaManager$AppType;->values()[Landroid/os/PersonaManager$AppType;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, v3, Landroid/os/PersonaManager$AppType;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/PersonaManager$AppType;->mName:Ljava/lang/String;

    return-object v0
.end method
